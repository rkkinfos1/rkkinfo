class AddSalaryToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :gross_salary, :integer
    add_column :employees, :net_salary, :integer
  end
end
