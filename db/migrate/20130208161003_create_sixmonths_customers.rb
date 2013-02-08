class CreateSixmonthsCustomers < ActiveRecord::Migration
  def change
    create_table :sixmonths_customers do |t|
      t.integer :emp_no
      t.string :name
      t.string :email
      t.string :phone
      t.string :issue
      t.string :feedback
      t.string :status

      t.timestamps
    end
  end
end
