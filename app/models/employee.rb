class Employee < ActiveRecord::Base
  attr_accessible :name, :no
  validates :no, :uniqueness => true
  validates_presence_of :name, :no
end
