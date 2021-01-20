require_relative '../../db/connection'

class Person
  attr_reader :name, :age
  @@connection = Connection.new
  COLUMNS = [:name, :age]

  def self.all
    group = []
    people = []
    @@connection.db.execute "select * from person" do |row|
      group << row
    end

    group.each do |row|
      attributes = {}

      row.each_with_index do |value, index|
        attributes[COLUMNS[index]] = value
      end

      people << Person.new(attributes)
    end
    people
  end

  def self.find(id)
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

people = Person.all

people.first.update(name: 'carlos')

people.first.show

people.first.destroy
