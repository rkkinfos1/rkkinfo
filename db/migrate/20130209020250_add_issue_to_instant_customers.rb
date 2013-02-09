class AddIssueToInstantCustomers < ActiveRecord::Migration
  def change
    add_column :instant_customers, :issue, :text
    add_column :instant_customers, :feedback, :text
    add_column :instant_customers, :status, :string
  end
end
