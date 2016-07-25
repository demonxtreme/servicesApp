class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :service, foreign_key: true, index: true
      t.belongs_to :user, foreign_key: true, index: true
      t.string :title, :null => false
      t.string :description, :null => false
      t.string :image_url


      t.timestamps
    end
  end
end
