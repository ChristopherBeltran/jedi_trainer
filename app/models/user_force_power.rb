class UserForcePower < ActiveRecord::Base
  belongs_to :user
  belongs_to :force_power
end
