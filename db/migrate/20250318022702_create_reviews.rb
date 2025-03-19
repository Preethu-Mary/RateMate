class CreateReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :desription
      t.integer :score
      t.belongs_to :business, null: false, foreign_key: true

      t.timestamps
    end
  end
end
