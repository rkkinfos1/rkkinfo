class Employee < ActiveRecord::Base
  attr_accessible :name, :no, :address, :tel, :email, :salary, :date_of_joining, :date_of_resignation, :cv
  validates :no, :uniqueness => true
  validates_presence_of :name, :no, :address, :tel, :email, :salary, :date_of_joining
  has_attached_file :cv,
                    :url  => "/assets/products/:id/original/:basename.:extension",
                    :path => ":rails_root/public/assets/products/:id/original/:basename.:extension"

  validates_attachment_content_type :cv,
      :content_type => [ 'application/pdf','application/msword'],
      :message => "only pdf and word files are allowed"
end
