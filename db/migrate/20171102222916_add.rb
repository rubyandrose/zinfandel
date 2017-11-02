class Add < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :star_sign, :text
  end
end
