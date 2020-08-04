class AddStateToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :state, :string
  end
end
