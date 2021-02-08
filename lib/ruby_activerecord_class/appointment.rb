class Appointment < ActiveRecord::Base
  belongs_to :user
  belongs_to :vehicle
  has_many :maintenance

  validates :email, :description, :date, :vin, presence: true
end
