ActiveAdmin.register Employee do
   actions :all
    	   filter :no
	   filter :name
	   index do
	   	  selectable_column

  column :no
  column :name
  column :created_at
  
  default_actions
end 
end
