class AddAmtToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :refund_amount, :string
  end
end
