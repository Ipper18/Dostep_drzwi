class ApplicationController < ActionController::Base
  private
  protect_from_forgery with: :null_session

  def after_sign_in_path_for(resource)
  dashboard_path # zamień to na ścieżkę, którą chcesz użyć
end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
