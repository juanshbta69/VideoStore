class User < ActiveRecord::Base
  has_and_belongs_to_many :movies
  
  #Validations
  validates :name, :presence => true
  validates :e_mail, :presence => true
  validates :e_mail, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }
  validates :e_mail, :uniqueness => true 
  validates :phone_number, :presence => true
  validates :address, :presence => true
  validates :role, :presence => true
  validates :password, :presence => true 
end
