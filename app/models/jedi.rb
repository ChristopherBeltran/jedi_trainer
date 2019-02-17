class Jedi < ActiveRecord::Base
  has_many :trainings
  has_many :padawans, through: :trainings
  has_many :jedi_force_powers
  has_many :force_powers, through: :jedi_force_powers
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
    Jedi.select(
  [
    JediForcePower.arel_table[:skill_level], ForcePower.arel_table[:name]
  ]
).where(Jedi.arel_table[:id].eq(*params)).joins(
  Jedi.arel_table.join(JediForcePower.arel_table).on(
    Jedi.arel_table[:id].eq(JediForcePower.arel_table[:jedi_id])
  ).join_sources
).joins(
  Jedi.arel_table.join(ForcePower.arel_table).on(
    JediForcePower.arel_table[:force_power_id].eq(ForcePower.arel_table[:id])
  ).join_sources
)
end


end
