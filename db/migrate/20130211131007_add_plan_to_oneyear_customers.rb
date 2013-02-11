class AddPlanToOneyearCustomers < ActiveRecord::Migration
  def change
    add_column :oneyear_customers, :plan, :string
  end
end
