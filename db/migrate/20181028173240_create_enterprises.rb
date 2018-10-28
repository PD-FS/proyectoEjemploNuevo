class CreateEnterprises < ActiveRecord::Migration[5.2]
  def change
    create_table :enterprises do |t|
      t.string :name
      t.string :nit
      t.string :address
      t.string :phone
      t.string :website
      t.string :facebook_id
      t.string :instagram_id
      t.decimal :latitude
      t.decimal :longitude
      t.text :description
      t.references :enterprise_sector, foreign_key: true
      t.string :isPublic
      t.string :logo
      t.string :coverPage

      t.timestamps
    end
  end
end
