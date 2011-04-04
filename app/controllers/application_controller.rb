class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_user_session, :current_user
  
  # method to autheticate the user verifying the user session
  # or redirecting to the login screen
  def authentication
    if UserSession.find.nil?
      respond_to do |format|
        format.html { redirect_to("/login", :notice => 'You must be logged in') }
      end
    end
  end

  private

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end
end
