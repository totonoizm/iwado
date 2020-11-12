class Post < ApplicationRecord
  belongs_to :user
  attachment :gim_image
  has_many :post_comments, dependent :destroy

end
