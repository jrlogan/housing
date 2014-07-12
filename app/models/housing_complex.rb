class HousingComplex < ActiveRecord::Base
  has_many :apartments
  has_many :program_contracts
  has_many :programs, via: :program_contracts
end
