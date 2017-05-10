class AddContactinfoToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :contactinfo, :string
  end
end
