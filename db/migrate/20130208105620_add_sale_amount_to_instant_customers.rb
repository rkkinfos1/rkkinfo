class AddSaleAmountToInstantCustomers < ActiveRecord::Migration
  def change
    add_column :instant_customers, :sale_amt, :integer
  end
end
