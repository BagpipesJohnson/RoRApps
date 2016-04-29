BusinessUnit.create!([
  {description: "HT&P"},
  {description: "ILI"}
])
Customer.create!([
  {company_name: "KOCH"},
  {company_name: "PEMEX"},
  {company_name: "EXCELL"}
])
Defense.create!([
  {description: "Design"},
  {description: "Guarding"},
  {description: "Protective Equipment"},
  {description: "Procedures/Training"},
  {description: "Communication"},
  {description: "Supervision"},
  {description: "Behaviors Intentional/Unintentional"}
])
DefenseResponse.create!([
  {observation_id: 45, defense_id: 1, response: "Purdy Good"},
  {observation_id: 45, defense_id: 2, response: "Strong"},
  {observation_id: 45, defense_id: 3, response: "hats"},
  {observation_id: 45, defense_id: 4, response: "Boring"},
  {observation_id: 45, defense_id: 5, response: "Tin Cans"},
  {observation_id: 45, defense_id: 6, response: "Minimal"},
  {observation_id: 45, defense_id: 7, response: "Intentional"}
])
EmployeeObserver.create!([
  {region_id: 1, first_name: "Chris", last_name: "Johnson"},
  {region_id: 2, first_name: "Jimmy", last_name: "Fallon"}
])
Observation.create!([
  {description: "Dummy", customer_id: 1, observation_date: "2016-04-25 19:12:00", business_unit_id: 1, employee_observer_id: 1, region_id: 1, feedback_comments: "Hope this works", service_center_id: 1, observation_type_id: 1}
])
ObservationType.create!([
  {description: "Field Observation"},
  {description: "Phone Interview"}
])
Region.create!([
  {description: "Western Hemisphere"},
  {description: "South America"},
  {description: "Walla Walla"}
])
ServiceCenter.create!([
  {description: "GPIC"},
  {description: "Tulsa"}
])
SurveyQuestion.create!([
  {question_text: "While performing your job, did you face any unanticipated situations?  Explain."},
  {question_text: "When did you have to \"\"make do\"\", improvise or adapt to get the job done?  Briefly explain what had to be done & why?"},
  {question_text: "In reference to this job, what did not go as planned?  Explain."},
  {question_text: "How can this process be improved? Explain."},
  {question_text: "What hazards were unable to be mitigated and what hazards were missed?  Explain."}
])
SurveyQuestionResponse.create!([
  {observation_id: 45, survey_question_id: 4, response: "Uh"},
  {observation_id: 45, survey_question_id: 5, response: "I"},
  {observation_id: 45, survey_question_id: 6, response: "Dunno"},
  {observation_id: 45, survey_question_id: 7, response: "What"},
  {observation_id: 45, survey_question_id: 8, response: "You mean"}
])
