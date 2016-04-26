class Observation < ActiveRecord::Base
  belongs_to :customer
  belongs_to :business_unit
  belongs_to :employee_observer
  belongs_to :region
  belongs_to :service_center
  belongs_to :observation_type
  has_many :survey_question_responses, :dependent => :delete_all
  has_many :defense_responses, :dependent => :delete_all

  accepts_nested_attributes_for :survey_question_responses
  accepts_nested_attributes_for :defense_responses
end
