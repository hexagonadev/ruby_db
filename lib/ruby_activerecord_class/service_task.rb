class ServiceTask < ActiveRecord::Base
 belongs_to :service_category
 has_many :service_steps
end