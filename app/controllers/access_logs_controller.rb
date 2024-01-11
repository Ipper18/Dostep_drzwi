class AccessLogsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_log, only: [:show]
end
