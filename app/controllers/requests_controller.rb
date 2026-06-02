class RequestsController < ApplicationController
  def index
    @requests = Request.order(:date)
  end

  def volunteer
    @request = Request.find(params[:id])

    @request.update(
      volunteer_name: params[:volunteer_name]
    )

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to root_path }
    end
  end
end
