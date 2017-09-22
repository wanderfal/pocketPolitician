class CreateDistricts < ActiveRecord::Migration[5.1]
  def change
    create_table :districts do |t|
      t.references :state
      t.integer :district_number

      t.timestamps
    end
  end
end
