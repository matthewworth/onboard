class HousesController < ApplicationController
  def index
  	@houses = House.all
  end

  def show
  	@house = House.find(params[:id])
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def house_params
      params.require(:house).permit(:title, :address, :description, :price_in_pence, :number_of_guests, :max_guests)
  end
end
