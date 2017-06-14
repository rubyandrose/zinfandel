class CreateCommentsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :user
      t.references :post
      t.string :comment_body
      t.timestamps
    end
  end
end
