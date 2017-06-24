# frozen_string_literal: true

class MessagesController < ProtectedController
  before_action :set_message, only: %i[update destroy]
  before_action :set_recruiter, only: %i[create index show]
  before_action :set_engineer, only: %i[create index show]
  before_action :set_conversation, only: :show

  # GET /messages
  def index
    @messages = Message.all

    render json: @messages
  end

  # GET /messages/1
  def show
    @messages = @conversation.messages
    render json: @messages
  end

  # POST /messages
  def create
    if current_user.account_type == 'engineer'
      @lunchable = @engineer
    else
      @lunchable = @recruiter
    end
    @message = @lunchable.messages.build(message_params)

    if @message.save
      render json: @message, status: :created, location: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /messages/1
  def update
    if @message.update(message_params)
      render json: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  # DELETE /messages/1
  def destroy
    @message.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_message
    @message = Message.find(params[:id])
  end

  def set_recruiter
    @recruiter = current_user.recruiter
  end

  def set_engineer
    @engineer = current_user.engineer
  end

  def set_conversation
    @conversation = Conversation.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:conversation_id, :body)
  end
end
