class AddOwnerIdForDogs < ActiveRecord::Migration[8.0]
  def change
    add_column :dogs, :owner_id, :integer
  end
end
