class ApplicationController < ActionController::Base

   helper_method :current_user

  def current_user
    @user = (PartyGoer.find_by(id: session[:user_id]) || PartyGoer.new)
  end

  def logged_in?
    # current_user.id != nil
    !!current_user
  end

  def require_logged_in
    return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
  end
  
end


