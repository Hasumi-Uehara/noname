class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  
  with_options presence: true do
    validates :event_name
    validates :event_date
    validates :user_id
    validates :image
  end

  validates :prefecture_id, numericality: { other_than: 0 }
end
