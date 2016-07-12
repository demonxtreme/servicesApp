class ServicesLocationController < ApplicationController

  @services
  def index
    @services = Service.all

  end



end
