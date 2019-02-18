class Padawan < ActiveRecord::Base
  has_many :trainings
  has_many :users, through: :trainings
  has_many :padawan_force_powers
  has_many :force_powers, through: :padawan_force_powers
end
