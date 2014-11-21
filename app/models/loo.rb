class Loo < ActiveRecord::Base
  belongs_to :user
  has_many :ratings

  validates :name, presence: true
  validates :lat, presence: true
  validates :long, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :postalCode, presence: true
  validates :country, presence: true
end
