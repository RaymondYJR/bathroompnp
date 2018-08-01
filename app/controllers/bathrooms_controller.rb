class BathroomsController < ApplicationController
  def index
    @bathrooms = Bathroom.all
  end

  def show
    @bathroom = Bathroom.find(params[:id])
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
    params.require(:bathroom).permit(:size, :address, :shower_condition, :price_per_use, :description, :user_id, :photo1, :photo2, :photo3)
  end
end
