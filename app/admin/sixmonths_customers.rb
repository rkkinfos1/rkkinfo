ActiveAdmin.register SixmonthsCustomer do
 scope :new_customer
   menu :parent => "Customers"


    actions :all
    filter :emp_id
	filter :name
	filter :created_at
	   
index do
    selectable_column

  column :emp_id
  column :name
  column :email
  column :tel
  column "joined on", :created_at
  
  default_actions
end 
end 

