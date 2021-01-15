class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture

  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one_attached :image, dependent: :destroy

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end
  
  with_options presence: true do
    validates :event_name
    validates :event_date
    validates :image
    validates :prefecture_id, numericality: { other_than: 0 }
  end
end
