class CreateBloodTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :blood_types do |t|
      t.string :group
      t.string :rh
      t.boolean :hasHIV

      t.timestamps
    end
  end
end
