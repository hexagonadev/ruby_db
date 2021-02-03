class Menu< ActiveRecord::Base

  def self.principal
    option = Menu.new


    if option.selection == '1'

      option.create_user

      option.create_appointment if option.selection == '2'
    end


    system('clear')
  end

  def initialize
    @input
  end

  def create_user
    User.find_or_create_by(mail_address: "#{@input}")

  end

  def create_appointment

  end

  def selection
    @input = gets.chomp
  end

end