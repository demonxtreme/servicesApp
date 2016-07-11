class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.references :customer, foreign_key: true
      t.string :name
      t.integer :service_type
      t.string :description
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
