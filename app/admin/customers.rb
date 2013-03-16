ActiveAdmin.register Customer do
  scope :new_customer
      actions :all
filter :emp_no
  filter :name
  filter :e_mail
  filter :phone
  filter :plan
  filter :technician
  filter :issue
  filter :feedback
  filter :trouble_shootingsteps
  filter :refund
  filter :created_at

 form do |f|
    f.inputs do
  f.input :emp_no
  f.input :name
  f.input :e_mail
  f.input :phone
  f.input :plan
  f.input :technician
  f.input :issue
  f.input :feedback, :as => :select, :collection => ['Issue Solved','Issue Not Solved','Under Screening']
  f.input :trouble_shootingsteps
  f.input :refund, :as => :select, :collection => ['Yes','No']
  f.input :refund_amount
    end
    f.buttons
  end

  index do
    selectable_column

  column :emp_no
  column :name
  column :e_mail
  column :phone
  column :plan
  column :technician
  column :issue
  column :feedback
  column :trouble_shootingsteps
  column :refund
  column :refund_amount
  column "joined on", :created_at
  
  default_actions
end 
config.per_page = 10
end
