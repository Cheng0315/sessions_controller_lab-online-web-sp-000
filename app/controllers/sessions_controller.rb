class SessionsController < ApplicationController

  def new
    if session[:name]
      render :'application/hello'
    else
      render :new
    end
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
    end
  end
end
