class User < ActiveRecord::Base

has_secure_password
has_many :messages


validates_uniqueness_of :email, case_sensitive: false, :message => "Email has already be registed in the system"
validates_format_of :email, :with => /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i, :message => "is not a valid format"
validates_presence_of :password, on: :create
validates_presence_of :password_confirmation, on: :create   

end
