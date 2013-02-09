class AddIssueToTwoyearCustomers < ActiveRecord::Migration
  def change
    add_column :twoyear_customers, :issue, :text
    add_column :twoyear_customers, :feedback, :text
    add_column :twoyear_customers, :status, :string
  end
end
