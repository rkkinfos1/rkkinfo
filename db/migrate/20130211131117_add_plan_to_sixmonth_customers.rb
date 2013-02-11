class AddPlanToSixmonthCustomers < ActiveRecord::Migration
  def change
    add_column :sixmonth_customers, :plan, :string
  end
end
