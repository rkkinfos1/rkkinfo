class AddSaleAmountToInstantCustomers < ActiveRecord::Migration
  def change
    add_column :instant_customers, :sale_amt, :default => "$99"
  end
end
