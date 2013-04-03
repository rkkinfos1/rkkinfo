class Customer < ActiveRecord::Base
  attr_accessible :e_mail, :emp_no, :feedback, :issue, :name, :phone, :plan, :refund, :technician, :trouble_shootingsteps, :refund_amount

scope :new_customer,where( 'created_at between ? and ?', Date.today, Date.tomorrow)
    validates :e_mail, :format => { :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/,
    :message => "Wrong Format" }
     validates_presence_of :emp_no, :e_mail, :name, :phone, :plan, :technician
def self.search(search)
  if search
    search=search.split(/,/)
    if search.count == 1
      order('created_at desc').find(:all, :conditions => ['emp_no LIKE ? or name LIKE ? or e_mail LIKE ? or phone LIKE ? or technician LIKE ? or refund LIKE ? or plan LIKE ?', "%#{search[0]}%", "%#{search[0]}%", "%#{search[0]}%", "%#{search[0]}%", "%#{search[0]}%", "%#{search[0]}%", "%#{search[0]}%"])
    else
      order('created_at desc').find(:all, :conditions => ['emp_no LIKE ? and name LIKE ?', "%#{search[0]}%", "%#{search[1]}%"])
    end
  else
    order('created_at desc').find(:all)
  end
end
end
