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
    if @engineer.update(engineer_params)
      head :no_content
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
    @engineer = current_user.engineers.find(params[:id])
  end

  def engineer_params
    params.require(:engineer).permit(:name, :website)
  end

  private :set_engineer, :engineer_params
end
