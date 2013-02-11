class AddPlanToInstantCustomers < ActiveRecord::Migration
  def change
    add_column :instant_customers, :plan, :string
  end
end
