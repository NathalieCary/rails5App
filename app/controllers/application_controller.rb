class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Included a rescue block for a prettier error message page
  rescue_from CanCan::AccessDenied do |exception|
   	redirect_to main_app.root_url, alert: exception.message
  end
end
