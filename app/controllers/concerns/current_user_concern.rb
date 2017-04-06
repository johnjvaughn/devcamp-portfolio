module CurrentUserConcern
  extend ActiveSupport::Concern
  
  def current_user
    super || guest_user
  end
  
  def guest_user
=begin
    OpenStruct.new( name: 'Guest User', 
                    first_name: 'Guest', 
                    last_name: 'User', 
                    email: 'guest@example.com'
                    )
=end
    GuestUser.new("Guest User", "guest@example.com")
  end                         
end