class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :emp_no
      t.string :name
      t.string :phone
      t.string :e_mail
      t.string :plan
      t.string :technician
      t.text :issue
      t.text :trouble_shootingsteps
      t.string :feedback
      t.string :refund

      t.timestamps
    end
  end
end
