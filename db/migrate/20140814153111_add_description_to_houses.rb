class AddDescriptionToHouses < ActiveRecord::Migration
  def change
  	add_column :houses, :description, :text
  end
end
