class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.date :event_date,       null: false
      t.string :event_name,     null: false
      t.integer :prefecture_id, null: false
      t.references :user,       null: false, foreign_key: true
      t.string :record
      t.string :title
      t.text :text
      t.timestamps
    end
  end
end
