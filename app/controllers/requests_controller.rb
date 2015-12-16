class RequestsController < ApplicationController

def create 
  @request = Request.new(request_params)
  if @request.save 
    flash[:success] = "Success!"
    redirect_to root_url 
    render 'griffmas/home'
  else
    flash[:error] = "It didn't work!"
    redirect_to root_url 
    render 'griffmas/home'
  end
end

def new 
end

private

  def request_params
    params.require(:request).permit(:name, :email, :platform, :request)
  end
end