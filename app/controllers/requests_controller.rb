class RequestsController < ApplicationController
  def index
    @requests = Request.order(:date)
  end
end
