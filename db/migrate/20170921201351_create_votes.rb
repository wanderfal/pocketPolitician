class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.references :member
      t.integer :bill_number
      t.string :position
      t.string :date

      t.timestamps
    end
  end
end
