class ProfileController < ApplicationController
  before_filter :authenticate_user!


  def index

    #@service = Service.find_by(id: params[:id]);

  end

  def show

    #get service by params
    @service = Service.find_by(id: params[:id])

    #get reviews from services
    @reviews = @service.reviews

    #get user from service id
    @user = User.find_by(id: @service.user_id)

  end


end
