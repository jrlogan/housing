class HousingComplex < ActiveRecord::Base
  has_many :apartments
  has_many :program_contracts
end
