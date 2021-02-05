require_relative "ruby_activerecord_class/user"

class CreateUSer

  def initialize

  end

  def create_user(email)
    user = User.create(email: email)
    self
  end

end