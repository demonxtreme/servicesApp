class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name, :null => false
      t.string :lastname, :null => false
      t.string :address
      t.string :country
      t.string :city
      t.string :postal_code
      t.integer :phone
      t.date :birthday

      t.timestamps
    end
  end
end
