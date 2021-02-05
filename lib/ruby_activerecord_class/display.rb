require_relative "menu"

module  Display
  def self.start
    menu = Menu.new
    menu.show
    menu.choose
    result = menu.options.select { |option| option.value == menu.input }
    puts result[0].action.start

  end
end