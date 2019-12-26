class AddInformationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone, :string
    add_column :users, :address, :string
    add_column :users, :sex, :int
    add_column :users, :birthday, :datetime
  end
end
