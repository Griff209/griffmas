class RequestsController < ApplicationController

def create 
  @request = Request.new(request_params)
  if @request.save 
    render 'griffmas/success'
  else
    render 'griffmas/error'
  end
end

def new 
end

private

  def request_params
    params.require(:request).permit(:name, :email, :platform, :request)
  end
end