class RecruitersController < ProtectedController
  before_action :set_recruiter, only: [:update, :destroy]

  # GET /recruiters
  # GET /recruiters.json
  def index
    @recruiters = Recruiter.all

    render json: @recruiters
  end

  # GET /recruiters/1
  # GET /recruiters/1.json
  def show
    render json: Recruiter.find(params[:id])
  end

  # POST /recruiters
  # POST /recruiters.json
  def create
    if current_user.account_type == 'engineer'
      render status: 401
      return
    end

    @recruiter = current_user.build_recruiter(recruiter_params)

    if @recruiter.save
      render json: @recruiter, status: :created
    else
      render json: @recruiter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recruiters/1
  # PATCH/PUT /recruiters/1.json
  def update
    if current_user.account_type == 'engineer'
      render status: 401
      return
    end

    if @recruiter.update(update_params)
      render json: @recruiter, status: :created
    else
      render json: @recruiter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recruiters/1
  # DELETE /recruiters/1.json
  def destroy
    @recruiter.destroy

    head :no_content
  end

  def set_recruiter
    @recruiter = current_user.recruiter
  end

  def recruiter_params
    params.require(:recruiter).permit(:name, :website)
  end

  def update_params
    params.require(:recruiter).permit(:website)
  end

  private :set_recruiter, :recruiter_params
end
