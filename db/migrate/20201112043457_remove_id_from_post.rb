class RemoveIdFromPost < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :id, :integer
  end
end
