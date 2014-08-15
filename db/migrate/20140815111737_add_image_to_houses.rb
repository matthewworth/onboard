class AddImageToHouses < ActiveRecord::Migration
  def change
  	add_attachment :houses, :image
  end
end
