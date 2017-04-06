class GuestUser < User
  attr_accessor :name, :first_name, :last_name, :email
  
  def initialize(name, email)
    self.name = name
    self.email = email
    self.first_name = name.split.first
    self.last_name = name.split.last
  end
  
end
