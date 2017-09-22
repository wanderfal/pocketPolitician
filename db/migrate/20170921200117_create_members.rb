class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.references :district
      t.references :state
      t.string :member_id
      t.string :first_name
      t.string :last_name
      t.string :facebook_account
      t.string :twitter_account
      t.string :youtube_account
      t.string :party
      t.string :next_election
      t.string :office
      t.string :phone
      t.string :fax

      t.timestamps
    end
  end
end
