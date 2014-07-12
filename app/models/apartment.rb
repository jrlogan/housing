class Apartment < ActiveRecord::Base
  belongs_to :housing_complex
  has_many :programs, through: :housing_complex
  has_many :clients
end
