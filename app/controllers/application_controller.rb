class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(:account_update) do |user|
      user.permit(:email, :password, :password_confirmation, :name, :country, :address, :city, :postal_code, :phone, :birthday)
    end

    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:email, :password, :password_confirmation, :name)
    end
  end

  # Adding new parameters to be permitted in the `sign_up` action.
  #devise_parameter_sanitizer.permit(:sign_up, keys: [:subscribe_newsletter])

  # Removing the `password` parameter from the `account_update` action.
  #devise_parameter_sanitizer.permit(:account_update, except: [:password])

  # Using the block form to completely override how we permit the
  # parameters for the `sign_up` action.
  # devise_parameter_sanitizer.permit(:sign_up) do |user|
  #   user.permit(:email, :password, :password_confirmation, :name)
  # end

end
