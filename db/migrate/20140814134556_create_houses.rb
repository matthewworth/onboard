class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
    	t. string :title
    	t.string :address
    	t.float :latitude
    	t.float :longitude
    	t.integer :price_in_pence
    	t.integer :numner_of_roooms
		  t.integer :max_guests
    	t.boolean :is_featured
    	t.boolean :available

		t.integer :user_id

      	t.timestamps
    end
  end
end
