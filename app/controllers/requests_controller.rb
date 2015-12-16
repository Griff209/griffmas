class RequestsController < ApplicationController

def create 
  @request = Request.new(request_params)
  if @request.save 
    params[:request] = []
    redirect_to root_url
    flash.now[:success] = "Success!"
  else
    params[:request] = []
    redirect_to root_url 
    flash.now[:error] = "It didn't work!"
    
  end
end

def new 
end

private

  def request_params
    params.require(:request).permit(:name, :email, :platform, :request)
  end
end