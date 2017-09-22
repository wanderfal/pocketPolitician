class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.string :title
      t.string :number
      t.string :congress
      t.string :introduced_date
      
      t.timestamps
    end
  end
end
