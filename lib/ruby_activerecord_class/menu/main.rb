require_relative 'principal_menu'

module Main
  def self.star
    puts " Bienvenido a tu mecanico de confianza"
    menu = Menu.new

    loop do
      menu.main
      menu.choose
        if menu.choose == 1
          menu.option_1
        elsif menu.choose == 2
          menu.option_2
        elsif menu.choose == 3
          menu.option_3
        end
    raise StopIteration if menu.choose == 4
    end
  end
end

Main.star
