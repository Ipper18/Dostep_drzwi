class PermissionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_permission, only: [:show, :edit, :update, :destroy]

end
