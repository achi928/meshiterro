class RemoveCaptionFromPostimages < ActiveRecord::Migration[6.1]
  def change
    remove_column :postimages, :caption, :text
  end
end
