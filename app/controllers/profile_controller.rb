class ProfileController < ApplicationController
  before_filter :authenticate_user!


  def index

  end

  def new
    @service = Service.new
    puts "pasando pasando"
  end



  def create
    @service = Service.new(service_params)
    @service.user_id = current_user.id

    puts "pasando pasando y por aca??"
    respond_to do |format|
      if @service.save
        format.html { redirect_to @service, notice: 'Service was wuyfgwyu successfully created.' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end

    #title =  params[:reviewTitle]
    #content = params[:reviewContent]

    #Review.create(service_id: @service.id, user_id: current_user.id, title: title, description: content )
    #Review.create(service_id: @service.id, user_id: current_user.id, title: "asdasdasdas", description: "asdasd")

      #redirect_back fallback_location: {action: "show", id: params[:id]}
    #redirect_to action: "show",

  end

  def show

    #get service by params
    @service = Service.find_by(id: params[:id])
    if !@service.nil?

      #get reviews from services
      @reviews = @service.reviews

      #get user from service id
      @user = User.find_by(id: @service.user_id)

    else
      redirect_to root_path

    end

  end

  def edit

  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def service_params
    params.require(:service).permit(:customer_id, :name, :service_type, :description, :latitude, :longitude, :img_url, :price, :availability, :phone_number, :email)
  end


end
