class HousesController < ApplicationController
  def index
  	@houses = House.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
