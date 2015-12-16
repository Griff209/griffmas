class RequestsController < ApplicationController

def create 
  @request = Request.new(request_params)
  if @request.save 
    flash[:success] = "Success!"
    params[:request] = []
    redirect_to root_url
  else
    flash[:error] = "It didn't work!"
    params[:request] = []
    redirect_to root_url 
  end
end

def new 
end

private

  def request_params
    params.require(:request).permit(:name, :email, :platform, :request)
  end
end