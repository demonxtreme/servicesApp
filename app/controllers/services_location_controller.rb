class ServicesLocationController < ApplicationController

  @services
  @location
  @serchInput
  def index
    @services = Service.all

    @location = params[:locationTextField]
    @searchInput = params[:searchInput]

  end



end
