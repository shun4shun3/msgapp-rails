class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :require_login, :except => [:not_authenticated]
 
  private
  def not_authenticated
    redirect_to new_session_path, notice: "Login first"
  end
end
