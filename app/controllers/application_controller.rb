class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  def authenticate_inviter!
    authenticate_admin!(:force => true)
  end
  def configure_permitted_paramaters
    devise_paramater_sanitizer.permit :accept_invitation, keys: [:email]
  end
end
