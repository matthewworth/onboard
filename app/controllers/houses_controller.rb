class HousesController < ApplicationController
  def index
  	@houses = House.all
  end

  def show
  	@house = House.find(params[:id])
  end

  def new
    require_user
    @user = current_user
    @house = @user.houses.new
  end

  def create
    require_user
    @user = current_user
    @house = @user.houses.new(house_params)
    if @house.save
      flash[:success] = "You've added a house"
      redirect_to house_path(@house)
    else
      render "new"
    end
  end

  def edit
    require_user
    @user = current_user
    @house = House.find(params[:id])
    if current_user == @house.user
      @house = @user.houses.find(params[:id]) 
      render :edit
    else 
      flash[:error] = "Only owners can update properties"
      redirect_to house_path(@house)
    end
  end

  def update
    @user = current_user
    @house = @user.houses.find(params[:id])

    if @house.update(house_params)
      redirect_to house_path(@house)    
    else
      flash[:error] = "Oops. Something went wrong - try again..."
      render :edit
    end
  end

  def destroy
  end

  private
  def house_params
      params.require(:house).permit(:title, :address, :description, :price_in_pence, :number_of_guests, :max_guests, :image, :user_id)
  end
end
