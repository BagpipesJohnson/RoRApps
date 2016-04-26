class DefenseResponse < ActiveRecord::Base
  belongs_to :observation
  belongs_to :defense
end
