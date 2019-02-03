class SessionsController < ApplicationController

  def new
    if session[:user]
      render :'application/hello'
    else
      render :new
    end
  end
end
