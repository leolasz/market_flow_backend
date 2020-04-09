class RequestsController < ApplicationController
  def index
    @requests = Request.all
    # @requests = Request.find_by :branch_id => params[:branch_name]
    render json: @requests
  end

  def new
    @request = Request.new
  end

  def create
    request = Request.create request_params
    redirect_to request
    
  end

  #Edit request
  def edit
    @request = Request.find params[:id]
  end

#Update request
  def update
    request = Request.find params[:id]
    Request.update request_params
    redirect_to request
  end

#Show request
  def show
    @request = Request.find params[:id]
  end

#Delete request
  def destroy
    request = Request.find params[:id]
    request.destroy
    render json: Request
  end

#Private Methods
  private
   def request_params
     params.require(:request).permit(:status, :created_at, :branch_id, :product_id, :price, :quantity)
   end
end
