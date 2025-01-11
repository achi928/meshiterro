class RemoveUserIdFromPostimages < ActiveRecord::Migration[6.1]
  def change
    remove_column :postimages, :user_id, :integer
  end
end
