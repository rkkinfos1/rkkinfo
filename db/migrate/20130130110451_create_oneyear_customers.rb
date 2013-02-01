class CreateOneyearCustomers < ActiveRecord::Migration
  def change
    create_table :oneyear_customers do |t|
      t.integer :emp_no
      t.string :name
      t.string :e_mail
      t.string :phone

      t.timestamps
    end
  end
end
