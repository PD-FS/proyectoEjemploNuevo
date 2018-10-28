class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.date :birthday
      t.string :email
      t.string :password
      t.references :gender, foreign_key: true
      t.references :document_type, foreign_key: true
      t.string :documentNumber
      t.string :phone
      t.string :cellphone
      t.integer :civicoins
      t.references :blood_type, foreign_key: true
      t.string :address
      t.string :nationality
      t.string :secondaryNationality
      t.string :pictureLarge
      t.string :pictureMedium
      t.string :pictureThumbnail

      t.timestamps
    end
  end
end
