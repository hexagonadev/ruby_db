class ServiceCategory < ActiveRecord::Base
  has_many :maintenance_categories
  has_many :service_task
end