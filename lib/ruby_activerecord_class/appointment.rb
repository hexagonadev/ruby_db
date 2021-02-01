class Appointment < ActiveRecord::Base
  belongs_to :user
  belongs_to :vehicle
  has_many :maintenance
end
