class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # this is a method that will recognize the current user
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # this method will determine whether a user is logged
  # in to the application
  def logged_in?
    current_user.present?
  end

  helper_method(:current_user, :logged_in?)


end
