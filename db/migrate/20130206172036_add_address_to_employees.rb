class AddAddressToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :address, :string
    add_column :employees, :tel, :string
    add_column :employees, :email, :string
    add_column :employees, :salary, :integer
    add_column :employees, :date_of_joining, :date
    add_column :employees, :date_of_resignation, :date
  end
end
