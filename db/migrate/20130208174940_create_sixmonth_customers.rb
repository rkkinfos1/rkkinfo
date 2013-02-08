class CreateSixmonthCustomers < ActiveRecord::Migration
  def change
    create_table :sixmonth_customers do |t|
      t.integer :emp_no
      t.string :name
      t.string :e_mail
      t.string :phone
      t.text :issue
      t.string :feedback
      t.string :status

      t.timestamps
    end
  end
end
