class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :services, foreign_key: true
      t.string :img_url

      t.timestamps
    end
  end
end
