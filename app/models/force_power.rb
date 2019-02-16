class ForcePower < ActiveRecord::Base
  has_many :jedi_force_powers
  has_many :jedi, through: :jedi_force_powers
  has_many :padawan_force_powers
  has_many :padawans, through: :padawan_force_powers
end
