require_relative 'principal_menu'
require_relative "../user"
require_relative "../vehicle"
require_relative "../appointment"

module Main
  def self.start
    puts " Bienvenido a tu mecanico de confianza"
    menu = Menu.new

    loop do
      menu.main
      input = menu.choose
        if input == 1
          menu.option_1.create_user
        elsif input == 2
          menu.option_2.add_vehicle
        elsif input == 3
          menu.option_3.appointment
        end
    raise StopIteration if input == 4
    end
  end
end
