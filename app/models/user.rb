class User < ActiveRecord::Base
  has_many :trainings
  has_many :padawans, through: :trainings
  has_many :user_force_powers
  has_many :force_powers, through: :user_force_powers
  has_secure_password

  #def display_skill_levels
  #  skills = []
  #  power_names = []
  #  self.force_powers.each do |power|
  #    power_names << power.name
  #    end
  #    power_levels = []
  #  self.jedi_force_powers.each do |pow|
  #    power_levels << pow.skill_level
  #  end
  #  power_names.zip(power_levels).each do |name, level|
  #     skills.merge{name = level}
  #    end
  #    skills
  #  end

  def display_skill_levels
    params = self.id
    User.select(
  [
    UserForcePower.arel_table[:skill_level], ForcePower.arel_table[:name]
  ]
).where(User.arel_table[:id].eq(*params)).joins(
  User.arel_table.join(UserForcePower.arel_table).on(
    User.arel_table[:id].eq(UserForcePower.arel_table[:user_id])
  ).join_sources
).joins(
  User.arel_table.join(ForcePower.arel_table).on(
    UserForcePower.arel_table[:force_power_id].eq(ForcePower.arel_table[:id])
  ).join_sources
)
end


end
