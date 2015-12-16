class RequestsController < ApplicationController

def create 
  @request = Request.new(request_params)
  if @request.save 
    redirect_to "/griffmas/success"
  else
    redirect_to "/griffmas/error"
  end
end

def new 
end

private

  def request_params
    params.require(:request).permit(:name, :email, :platform, :request)
  end
end