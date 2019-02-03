class SessionsController < ApplicationController

  def new
    if session[:name]
      render :'application/hello'
    else
      render :new
    end
  end

  def create
    if !params[:name]
      redirect_to '/login'
    else
      render :'application/hello'
    end
  end
end
