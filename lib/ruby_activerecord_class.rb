require "ruby_activerecord_class/version"
require_relative "../db/connection"
require_relative "ruby_activerecord_class/person"
require_relative "ruby_activerecord_class/menu/display"

module RubyActiveRecordClass
  class Error < StandardError; end
    def self.start
      Display.start
    end
  end
