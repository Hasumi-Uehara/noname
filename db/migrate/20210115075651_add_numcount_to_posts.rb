class AddNumcountToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :likes_count, :integer
  end
end
