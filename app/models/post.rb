class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture

  belongs_to :user
  has_one_attached :image
  
  with_options presence: true do
    validates :event_name
    validates :event_date
    validates :user_id
    validates :image
    validates :prefecture_id, numericality: { other_than: 0 }
  end
end
