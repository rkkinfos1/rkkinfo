class AddTroubleToTwoyearCustomers < ActiveRecord::Migration
  def change
    add_column :twoyear_customers, :trouble_shooting_steps, :text
  end
end
