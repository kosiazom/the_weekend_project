class SessionsController < ApplicationController
  def new
  end

  def create
    
    username = params[:username]
    @user = PartyGoer.find_by(username: username)
    if @user && @user.authenticate(params[:password])
     session[:user_id] = @user.id 
      flash[:message] = "Party Goer is logged in"
      redirect_to parties_path
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end
end