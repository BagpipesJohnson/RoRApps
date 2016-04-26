#!/bin/bash

rails generate scaffold business_unit description:string
rails generate scaffold service_center description:string
rails generate scaffold defense description:string
rails generate scaffold survey_question question_text:string
rails generate scaffold region description:string
rails generate scaffold observation_type description:string
rails generate scaffold employee_observer region:references first_name:string last_name:string
rails generate scaffold customer company_name:string
rails generate scaffold observation description:string customer:references observation_date:datetime business_unit:references employee_observer:references region:references feedback_comments:string service_center:references observation_type:references
rails generate scaffold defense_response observation:references defense:references response:string
rails generate scaffold survey_question_response observation:references survey_question:references response:string


rake db:migrate
