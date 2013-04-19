ActiveAdmin.register Employee do
   actions :all
    	   filter :no
	   filter :name
	   filter :gross_salary
     filter :net_salary
	   filter :date_of_joining
     show do 
      attributes_table do
        row :no
        row :name
  row :address
  row :tel
  row :email
  row :gross_salary
  row :net_salary
  row :date_of_joining
  row :date_of_resignation
  row "CV" do |employee|
      link_to 'My CV',employee.cv.url 
    end
  row :created_at
        
      end
      active_admin_comments
    end

    
	   index do
	   	  selectable_column

  column :no
  column :name
  column :address
  column :tel
  column :email
  column :gross_salary
  column :net_salary
  column :date_of_joining
  column :date_of_resignation
  column "CV" do |employee|
      link_to 'My CV',employee.cv.url 
    end
  column :created_at

  
  default_actions
end 

 form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :no
    f.input :name
    f.input :address
    f.input :tel
    f.input :email
    f.input :gross_salary
    f.input :net_salary
    f.input :date_of_joining, :as => :date
    f.input :date_of_resignation, :as => :date
    f.input :cv, :as => :file, :hint => f.template.image_tag(f.object.cv.url(:medium))
   
  end
  f.buttons
 end
end
