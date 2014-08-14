class FixSpelling < ActiveRecord::Migration
  def change
  	rename_column :houses, :numner_of_roooms, :number_of_rooms
  end
end
