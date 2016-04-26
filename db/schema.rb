# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160418151136) do

  create_table "business_units", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "company_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "defense_responses", force: :cascade do |t|
    t.integer  "observation_id"
    t.integer  "defense_id"
    t.string   "response"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "defense_responses", ["defense_id"], name: "index_defense_responses_on_defense_id"
  add_index "defense_responses", ["observation_id"], name: "index_defense_responses_on_observation_id"

  create_table "defenses", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employee_observers", force: :cascade do |t|
    t.integer  "region_id"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "employee_observers", ["region_id"], name: "index_employee_observers_on_region_id"

  create_table "observation_types", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "observations", force: :cascade do |t|
    t.string   "description"
    t.integer  "customer_id"
    t.datetime "observation_date"
    t.integer  "business_unit_id"
    t.integer  "employee_observer_id"
    t.integer  "region_id"
    t.string   "feedback_comments"
    t.integer  "service_center_id"
    t.integer  "observation_type_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "observations", ["business_unit_id"], name: "index_observations_on_business_unit_id"
  add_index "observations", ["customer_id"], name: "index_observations_on_customer_id"
  add_index "observations", ["employee_observer_id"], name: "index_observations_on_employee_observer_id"
  add_index "observations", ["observation_type_id"], name: "index_observations_on_observation_type_id"
  add_index "observations", ["region_id"], name: "index_observations_on_region_id"
  add_index "observations", ["service_center_id"], name: "index_observations_on_service_center_id"

  create_table "regions", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "service_centers", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "survey_question_responses", force: :cascade do |t|
    t.integer  "observation_id"
    t.integer  "survey_question_id"
    t.string   "response"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "survey_question_responses", ["observation_id"], name: "index_survey_question_responses_on_observation_id"
  add_index "survey_question_responses", ["survey_question_id"], name: "index_survey_question_responses_on_survey_question_id"

  create_table "survey_questions", force: :cascade do |t|
    t.string   "question_text"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
