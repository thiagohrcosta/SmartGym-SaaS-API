class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  def sign_up(resource_name, resource)
  end
end