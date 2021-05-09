class ApplicationController < ActionController::Base
  helper_method :current_user

  before_action :verify_authenticity_token

  def login(user)
    session[:user_id] = user.id
  end

  def logout
    session.delete(:user_id)
    @current_user = nil
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  private

  def verify_authenticity_token
    unless !current_user.nil?
      redirect_to root_path
    end
  end
end
