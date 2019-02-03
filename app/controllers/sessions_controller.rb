class SessionsController < ApplicationController

  def new
    if session[:user]
      render :'application/hello'
    else
      render :new
    end
  end

  def create
    if params[:user].empty?
      render :new
    else
      render :'application/hello'
    end
  end
end
