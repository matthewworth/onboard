class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
  		t.integer :user_id
  		t.integer :house_id
  		t.string :striple_token

    	t.timestamps
    end
  end
end
