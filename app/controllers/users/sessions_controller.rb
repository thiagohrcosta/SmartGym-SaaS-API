# app/controllers/users/sessions_controller.rb
class Users::SessionsController < Devise::SessionsController
  respond_to :json

  def create
    self.resource = warden.authenticate!(auth_options)
    sign_in(resource_name, resource)
    render json: {
      message: 'Logged in successfully'
    }, status: :ok
  end

  def destroy
    sign_out(resource_name)
    render json: {
      message: 'Logged out successfully'
    }, status: :ok
  end
end
