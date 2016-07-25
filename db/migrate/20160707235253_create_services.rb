class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :name
      t.string :service_type
      t.string :description
      t.decimal :latitude
      t.decimal :longitude
      t.string :img_url
      t.decimal :price
      t.string :availability
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
