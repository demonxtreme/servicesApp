class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :service, foreign_key: true
      t.references :customer, foreign_key: true
      t.string :title, :null => false
      t.string :description, :null => false
      t.string :image_url, :null => false

      t.timestamps
    end
  end
end
