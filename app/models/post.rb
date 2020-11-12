class Post < ApplicationRecord
  belongs_to :user
  attachment :gim_image
end
