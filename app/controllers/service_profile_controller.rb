class ServiceProfileController < ApplicationController
  before_filter :authenticate_user!

  def index

    @user = User.find_by(id: 1)
    @userServices = @user.services

  end

end
