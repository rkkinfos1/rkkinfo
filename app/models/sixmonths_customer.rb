class SixmonthsCustomer < ActiveRecord::Base
  attr_accessible :email, :emp_no, :feedback, :issue, :name, :phone, :status

scope :new_customer,where( 'created_at between ? and ?', Date.today, Date.tomorrow)
    validates :email, :format => { :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/,
    :message => "Wrong Format" }
     validates_presence_of :emp_no, :email, :name, :phone
     def self.search(search)
  if search
    find(:all, :conditions => ['cast(emp_no as text) LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end
