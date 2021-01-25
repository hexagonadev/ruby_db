require_relative '../../db/connection'

class Person
  attr_reader :id
  attr_accessor :name, :age

  @@connection = Connection.new

  def self.all
    group = []
    people = []
    @@connection.db.execute2 "select * from people" do |row|
      group << row
    end
    columns = group.shift

    group.each do |row|
      attributes = {}

      row.each_with_index do |value, index|
        attributes[columns[index].to_sym] = value
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
    @id = options[:id]
    @name = options[:name]
    @age = options[:age]
  end

  def update(options = {})
    set = "SET "
    options.each do |key, value|
      set << "#{key} = '#{value}',"

      self.method(key.to_s + "=").call(value)
    end

    set.chop!

    sql = "UPDATE people #{set} WHERE id = #{id}"
    puts sql

    @@connection.db.execute(sql)

    self
  end

  def destroy
  end

  def show
  end
end

people = Person.all

 person = people.first

puts person.update(name: 'Carlos', age: 32).inspect

# people.first.update(name: 'carlos')

# people.first.show

# people.first.destroy
