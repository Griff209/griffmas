class RequestsController < ApplicationController

def create 
  @request = Request.new(request_params)
  if @request.save 
    params[:request] = []
    flash[:message] = "Success!"
    flash.keep
    redirect_to root_url
  else
    params[:request] = []
    flash[:message] = "It didn't work!"
    flash.keep
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