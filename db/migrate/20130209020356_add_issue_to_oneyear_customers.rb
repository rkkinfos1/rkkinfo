class AddIssueToOneyearCustomers < ActiveRecord::Migration
  def change
    add_column :oneyear_customers, :issue, :text
    add_column :oneyear_customers, :feedback, :text
    add_column :oneyear_customers, :status, :string
  end
end
