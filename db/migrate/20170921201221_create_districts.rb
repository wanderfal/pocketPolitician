class CreateDistricts < ActiveRecord::Migration[5.1]
  def change
    create_table :districts do |t|
      t.integer :district_number
      t.string  :state
      
      t.timestamps
    end
  end
end
