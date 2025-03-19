class RenameDesriptionToDescriptionInReviews < ActiveRecord::Migration[8.0]
  def change
    rename_column :reviews, :desription, :description
  end
end
