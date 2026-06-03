class Admin::RequestsController < Admin::BaseController
  def index
    @requests = Request.where('date >= ?', Date.today).order(:date)
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)

    if @request.save
      redirect_to admin_requests_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    request = Request.find(params[:id])
    request.destroy

    redirect_to admin_requests_path
  end

  private

  def request_params
    params.require(:request).permit(
      :title,
      :date,
      :start_time,
      :end_time,
      :location,
      :note
    )
  end
end
