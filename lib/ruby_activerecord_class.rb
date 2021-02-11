require "ruby_activerecord_class/version"
require_relative "../db/connection"
require_relative "ruby_activerecord_class/person"
require_relative "ruby_activerecord_class/menu/main"

module RubyActiveRecordClass
  class Error < StandardError; end
  def self.start
    Main.start
  end
end
