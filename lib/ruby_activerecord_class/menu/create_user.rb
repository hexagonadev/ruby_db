require_relative "../user"

class CreateUSer

  def create_user
    puts 'Ingrese email'
    email = gets.chomp
    user = User.new
    user.email = email
    user.save

    puts " Bienvenido #{email}"

  end

end