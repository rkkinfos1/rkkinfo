class AddPlanToTwoyearCustomers < ActiveRecord::Migration
  def change
    add_column :twoyear_customers, :plan, :string
  end
end
