class AddGimImageIdToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :gim_image_id, :string
  end
end
