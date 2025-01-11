class RemoveShopNameFromPostimages < ActiveRecord::Migration[6.1]
  def change
    remove_column :postimages, :shop_name, :string
  end
end
