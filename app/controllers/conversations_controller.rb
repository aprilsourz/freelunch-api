# frozen_string_literal: true

class ConversationsController < ProtectedController
  before_action :set_conversation, only: %i[show update destroy remove_from_trash]
  before_action :set_recruiter, only: %i[create index]
  before_action :set_engineer, only: %i[update index]
  # GET /conversations
  def index
    if current_user.account_type == 'engineer'
      @conversations = @engineer.conversations.all
    elsif current_user.account_type == 'recruiter'
      @conversations = @recruiter.conversations.all
    end
    render json: @conversations
  end

  # GET /conversations/1
  def show
    render json: @conversation
  end

  # POST /conversations
  def create
    @conversation = @recruiter.conversations.build(create_conversation_params)

    if @conversation.save
      render json: @conversation, status: :created, location: @conversation
    else
      render json: @conversation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /conversations/1
  def update
    @current_edit = @engineer.conversations.find(@conversation.id)
    if @current_edit.update(update_conversation_params)
      render json: @current_edit
    else
      render json: @conversation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /conversations/1
  def destroy
    if current_user.account_type == 'engineer'
      if @conversation.update(show_to_engineer: false)
        render json: @conversation
      else
        render json: @conversation.errors, status: :unprocessable_entity
      end
    end

    if current_user.account_type == 'recruiter'
      if @conversation.update(show_to_recruiter: false)
        render json: @conversation
      else
        render json: @conversation.errors, status: :unprocessable_entity
      end
    end
  end

  def remove_from_trash
    if current_user.account_type == 'engineer'
      if @conversation.update(show_to_engineer: true)
        render json: @conversation
      else
        render json: @conversation.errors, status: :unprocessable_entity
      end
    end

    if current_user.account_type == 'recruiter'
      if @conversation.update(show_to_recruiter: true)
        render json: @conversation
      else
        render json: @conversation.errors, status: :unprocessable_entity
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_conversation
    @conversation = Conversation.find(params[:id])
  end

  def set_recruiter
    @recruiter = current_user.recruiter
  end

  def set_engineer
    @engineer = current_user.engineer
  end

  # Only allow a trusted parameter "white list" through.

  def create_conversation_params
    params.require(:conversation)
          .permit(:recruiter_name, :engineer_name, :lunch_request, :engineer_id)
  end

  def update_conversation_params
    params.require(:conversation).permit(:response, :is_completed)
  end
end
