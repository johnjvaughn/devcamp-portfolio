class GuestUser < User
  attr_accessor :name, :first_name, :last_name, :email, :id, :roles
  
  def initialize(name="Guest User", email="guest@user.com", id=0)
    self.name = name
    self.email = email
    self.first_name = name.split.first
    self.last_name = name.split.last
    self.id = id > 0 ? id : self.object_id
    self.roles = ['']
  end
  
end
