class Person < ActiveRecord::Base
  # attr_reader :id
  # attr_accessor :name, :age

  # @@connection = Connection.new

  # def self.all
  #   group = []
  #   people = []
  #   @@connection.db.execute2 "select * from people" do |row|
  #     group << row
  #   end
  #   columns = group.shift

  #   group.each do |row|
  #     attributes = {}

  #     row.each_with_index do |value, index|
  #       attributes[columns[index].to_sym] = value
  #     end

  #     people << Person.new(attributes)
  #   end
  #   people
  # end

  # def self.find(id)
  #   []
  # end

  # def self.find(id)
  #   @@connection.db.execute "SELECT * FROM people WHERE id = #{id} " do |row|
  #     p row
  #   end
  # end

  # def self.create(options = {})
  #   column_list = ""
  #   values_list = ""

  #   options.each do |key, value|
  #     column_list << " #{key},"
  #     values_list << " '#{value}',"
  #   end
  #   column_list.chop!
  #   values_list.chop!

  #   @@connection.db.execute2 "INSERT INTO people (#{column_list}) VALUES (#{values_list})"

  # end

  # def initialize(options = {})
  #   @id = options[:id]
  #   @name = options[:name]
  #   @age = options[:age]
  # end

  # def update(options = {})
  #   set = "SET "
  #   options.each do |key, value|
  #     set << "#{key} = '#{value}',"

  #     self.method(key.to_s + "=").call(value)
  #   end

  #   set.chop!

  #   sql = "UPDATE people #{set} WHERE id = #{@id}"
  #   puts sql

  #   p @@connection.db.execute(sql).result

  #   self
  # end

  # def destroy
  #   sql = "DELETE FROM people WHERE id = #{@id}"
  #   @@connection.db.execute(sql)
  #   self
  # end

  # def show
  #   puts "Registro num. #{id} :
  #         NOMBRE #{name}, EDAD: #{age}"

  # end
end

# people = Person.all
# # p people

# person = people.first

# person.update(name: 'Nathaly', age: 28)

# # people.first.update(name: 'carlos')

# # people.first.show

# # people.first.destroy
