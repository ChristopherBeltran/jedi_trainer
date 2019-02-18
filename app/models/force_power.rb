class ForcePower < ActiveRecord::Base
  has_many :user_force_powers
  has_many :user, through: :user_force_powers
  has_many :padawan_force_powers
  has_many :padawans, through: :padawan_force_powers
end
