class MaintenanceService < ActiveRecord::Base
 belongs_to :Maintenance
 belongs_to :service_category
end