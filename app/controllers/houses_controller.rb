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

end
