class GuestUser < User
  attr_accessor :name, :first_name, :last_name, :email, :roles
  
  def initialize(name, email)
    self.name = name
    self.email = email
    self.first_name = name.split.first
    self.last_name = name.split.last
    self.roles = ['']
  end
  
end
