class CreateSixmonthsCustomers < ActiveRecord::Migration
  def change
    create_table :sixmonths_customers do |t|
      t.integer :emp_id
      t.string :name
      t.string :email
      t.string :tel
      t.text :issue
      t.text :feedback

      t.timestamps
    end
  end
end
