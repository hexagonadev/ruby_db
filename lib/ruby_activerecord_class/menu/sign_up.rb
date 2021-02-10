require_relative "../user"

class SignUp

  def initialize
    @user = User.new
  end

  def start
    found = true

    while found do
      puts "Ingrese su email:"
      @user.email = gets.chomp

      if @user.save
        puts ""
        puts "Bienvenid@, usuario creado con exito
              ¿Quiere registar su vehiculo? SI: 1 / NO: 2"
        found = flase
      else
        @user.errors.full_messages.each {|message| puts message}
        puts ""
      end
    end
  end
end