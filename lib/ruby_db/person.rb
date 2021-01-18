require_relative '../../db/connection'

class Person
  attr_reader :name, :age
  @@connection = Connection.new

  def self.all
    @@connection.execute
    []
  end

  def self.create
    []
  end

  def initialize(options = {})
    @name = options[:name]
    @age = options[:age]
  end

  def update
  end

  def destroy
  end

  def show
  end
end

p Person.all
