class EngineersController < OpenReadController
  before_action :set_engineer, only: [:update, :destroy]

  # GET /engineers
  # GET /engineers.json
  def index
    @engineers = Engineer.all

    render json: @engineers
  end

  # GET /engineers/1
  # GET /engineers/1.json
  def show
    render json: Engineer.find(params[:id])
  end

  # POST /engineers
  # POST /engineers.json
  def create
    if current_user.account_type == 'recruiter'
      render status: 401
      return
    end

    @engineer = current_user.build_engineer(engineer_params)

    if @engineer.save
      render json: @engineer, status: :created
    else
      render json: @engineer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /engineers/1
  # PATCH/PUT /engineers/1.json
  def update
    if current_user.account_type == 'recruiter'
      render status: 401
      return
    end
    if @engineer.update(update_params)
      render json: @engineer, status: :created
    else
      render json: @engineer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /engineers/1
  # DELETE /engineers/1.json
  def destroy
    @engineer.destroy

    head :no_content
  end

  def set_engineer
    @engineer = current_user.engineer
  end

  def engineer_params
    params.require(:engineer).permit(:name, :website)
  end

  def update_params
    params.require(:engineer).permit(:website)
  end


  private :engineer_params, :set_engineer
end
