class AddTroubleToOneyearCustomers < ActiveRecord::Migration
  def change
    add_column :oneyear_customers, :trouble_shooting_steps, :text
  end
end
