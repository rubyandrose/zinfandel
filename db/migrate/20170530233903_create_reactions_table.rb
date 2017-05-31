class CreateReactionsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :reactions do |t|
      t.references :user
      t.references :post
      t.string :feels
      t.timestamps
    end
  end
end
