class ProfileController < ApplicationController
  before_filter :authenticate_user!


  def index


  end


  def create
    @service = Service.find_by(id: params[:id])


    #title =  params[:reviewTitle]
    #content = params[:reviewContent]

    #Review.create(service_id: @service.id, user_id: current_user.id, title: title, description: content )
    Review.create(service_id: @service.id, user_id: current_user.id, title: "asdasdasdas", description: "asdasd" )

    redirect_back fallback_location: { action: "show", id: params[:id] }
    #redirect_to action: "show",

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
