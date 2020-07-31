class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :role
      t.string :gender
      t.string :party
      t.string :facebook_account
      t.string :youtube_id
      t.string :seniority
      t.string :next_election
      t.string :api_uri
      t.string :district
      t.string :at_large
    end
  end
end
