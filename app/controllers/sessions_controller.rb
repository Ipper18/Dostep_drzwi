class SessionsController < Devise::SessionsController
  def create
    self.resource = warden.authenticate!(auth_options)
    if resource
      set_flash_message!(:notice, :signed_in)
      sign_in(resource_name, resource)
      yield resource if block_given?
      respond_with resource, location: after_sign_in_path_for(resource)
    else
      set_flash_message!(:alert, 'Invalid login attempt.')
      redirect_to new_session_path(resource_name)
    end
  end

  def after_failure_path_for
  new_user_session_path
  end
end
