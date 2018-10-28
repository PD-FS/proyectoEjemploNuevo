class CreateEnterpriseSectors < ActiveRecord::Migration[5.2]
  def change
    create_table :enterprise_sectors do |t|
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
