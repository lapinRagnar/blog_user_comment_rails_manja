class Post < ApplicationRecord
  has_many :comments, dependent: :destroy

  has_one_attached :image
  has_rich_text :body
end
