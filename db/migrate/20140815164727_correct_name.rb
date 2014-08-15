class CorrectName < ActiveRecord::Migration
  def change
  	rename_column :orders, :striple_token, :stripe_token
  end
end
