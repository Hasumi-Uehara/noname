class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image, dependent: :destroy
  
  with_options presence: true do
    validates :event_name
    validates :event_date
    validates :image
    validates :prefecture_id, numericality: { other_than: 0 }
  end
end
