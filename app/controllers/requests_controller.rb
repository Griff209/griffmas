class RequestsController < ApplicationController

def create 
  @request = Request.new
  if @request.save 
    flash[:success] = "Success!"
    render 'griffmas/home'
  else
    flash[:error] = "It didn't work!"
    render 'griffmas/home'
  end
end
end