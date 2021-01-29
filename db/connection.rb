
require "active_record"
# connect to SQLite3
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: './db/database')

# class Connection
#   attr_reader :db

#   def initialize
#     @db = SQLite3::Database.new "./db/database"
#   end

#   # def create_table
#   #   @db.execute <<-SQL
#   #     create table person (
#   #       name varchar(30),
#   #       age int
#   #     );
#   #   SQL
#   # end

#   # def insert
#   #   data = { "Bibi" => 18, "Mire" => 2, "Nathaly" => 28 }
#   #   data.each do |pair|
#   #     @db.execute "insert into person values ( ?, ? )", pair
#   #   end
#   # end

#   # def select
#   #   @db.execute "select * from person" do |row|
#   #     p row
#   #   end
#   # end
# end

# sqlite = Connection.new

# sqlite.select
