class InstantCustomer < ActiveRecord::Base
  attr_accessible :e_mail, :emp_no, :name, :phone
        validates :e_mail, :uniqueness => true

	 scope :new_customer,where( 'created_at between ? and ?', Date.today, Date.tomorrow)
    validates :e_mail, :format => { :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/,
    :message => "Wrong Format" }
     validates_presence_of :emp_no, :e_mail, :name, :phone
     def self.search(search)
  if search
    find(:all, :conditions => ['emp_no LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end
