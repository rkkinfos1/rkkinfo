class AddTroubleToInstantCustomers < ActiveRecord::Migration
  def change
    add_column :instant_customers, :trouble_shooting_steps, :text
  end
end
