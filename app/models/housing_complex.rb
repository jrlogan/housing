class HousingComplex < ActiveRecord::Base
  has_many :apartments
  has_many :program_contracts
  has_many :programs, through: :program_contracts
end
