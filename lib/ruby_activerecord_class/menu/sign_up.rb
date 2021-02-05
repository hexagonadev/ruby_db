require_relative "../user"

class SignUp

  def start
    puts "Ingrese su email:"
    email = gets.chomp
    user = User.create(email: email)
    ""
    "Usuario creado con exito
      Bienvenid@, #{email}"
    ""
    "¿Quiere registar su vehiculo? SI: 1 / NO: 2"
  end
end