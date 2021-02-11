require_relative "../user"

class CreateUser

  def create_user
    puts 'Ingrese email'
    email = gets.chomp
    puts ""
    user = User.new
    user.email = email

    loop do
      if user.save
      puts " Bienvenido #{email}"
      puts ""
      raise StopIteration
      else
      puts user.errors.full_messages
      CreateUser.new.create_user
      end
    end
  end

end