class Jedi < ActiveRecord::Base
  has_many :trainings
  has_many :padawans, through: :trainings
  has_many :jedi_force_powers
  has_many :force_powers, through: :jedi_force_powers
  has_secure_password

end
