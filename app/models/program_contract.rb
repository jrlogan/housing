class ProgramContract < ActiveRecord::Base
  belongs_to :program
  belongs_to :housing_complex
end
