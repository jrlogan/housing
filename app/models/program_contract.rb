class ProgramContract < ActiveRecord::Base
  belongs_to :program
  belongs_to :housing_complex
  belongs_to :apartment, via: :housing_complex
end
