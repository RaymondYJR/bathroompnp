class BathroomsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = " \
        bathrooms.name ILIKE :query \
        OR bathrooms.description ILIKE :query \
        OR users.name ILIKE :query \
      "
      @bathrooms = Bathroom.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @bathrooms = Bathroom.where.not(latitude: nil, longitude: nil)
    end
    @markers = @bathrooms.map do |bathroom|
      {
        lat: bathroom.latitude,
        lng: bathroom.longitude,
      }
    end
  end

  def show
    @bathroom = Bathroom.find(params[:id])
    @markers = [{
        lat: @bathroom.latitude,
        lng: @bathroom.longitude,
      }]
  end

  def new
    @bathroom = Bathroom.new
  end

  def create
    @bathroom = Bathroom.new(bathroom_params)
    @bathroom.user_id = current_user.id
    if @bathroom.save
      redirect_to bathroom_path(@bathroom)
    else
      render :new
    end
  end

  def edit
    @bathroom = Bathroom.find(params[:id])
  end

  def update
    @bathroom = Bathroom.find(params[:id])
    if @bathroom.update(bathroom_params)
      redirect_to bathroom_path(@bathroom)
    else
      render :edit
    end
  end

  def destroy
    @bathroom = Bathroom.find(params[:id])
    @bathroom.destroy
    redirect_to bathrooms_path
  end

  private

  def bathroom_params
    params.require(:bathroom).permit(:name, :size, :address, :shower_condition, :price_per_use, :description, :user_id, :photo1, :photo2, :photo3)
  end
end
