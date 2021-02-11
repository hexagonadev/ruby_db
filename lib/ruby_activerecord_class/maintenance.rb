class Maintenance < ActiveRecord::Base
  belongs_to :appointment
  has_many :maintenance_services
  validates :appointment, presence: true
end