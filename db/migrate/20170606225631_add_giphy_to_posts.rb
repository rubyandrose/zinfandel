class AddGiphyToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :giphy, :string
  end
end
