class StaticController < ApplicationController
  def index
    @users = User.all
    @permissions = Permission.all
    @cards = Card.all
    @rooms = Room.all
    @logs = AccessLog.all
  end
end
