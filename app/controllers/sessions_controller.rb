class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to '/sessions/new'
    else
    session[:name] = params[:name]
       redirect_to '/'
     end
  end

  def destroy
      render :hello
    if session[:name] != nil
      session.delete :name
    end
  end


end
