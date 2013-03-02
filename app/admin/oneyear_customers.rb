ActiveAdmin.register OneyearCustomer do
  scope :new_customer
   menu :parent => "Old Customers"

    actions :all
    filter :emp_no
	filter :name
	filter :created_at
	   
index do
    selectable_column

  column :emp_no
  column :name
  column :e_mail
  column :phone
  column :plan
  column :issue
  column :feedback
    column :trouble_shooting_steps

  column :status
  column "joined on", :created_at
  
  default_actions
end 
end
