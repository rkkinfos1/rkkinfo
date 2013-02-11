class AddTroubleToSixmonthCustomers < ActiveRecord::Migration
  def change
    add_column :sixmonth_customers, :trouble_shooting_steps, :text
  end
end
