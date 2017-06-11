class ConversationsController < ProtectedController
  before_action :set_conversation, only: [:show, :update, :destroy]
  before_action :set_recruiter, only: [:create]
  before_action :set_engineer, only: [:update]
  # GET /conversations
  def index
    @conversations = Conversation.all

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
    @conversation.destroy
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
