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

ActiveRecord::Schema.define(version: 2019_12_06_040341) do

  create_table "answer_options", force: :cascade do |t|
    t.string "survey_answer_option"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "answer_category"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer "survey_id"
    t.integer "answer_option_id"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_option_id"], name: "index_feedbacks_on_answer_option_id"
    t.index ["survey_id"], name: "index_feedbacks_on_survey_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "survey_question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "answer_category"
  end

  create_table "shops", force: :cascade do |t|
    t.string "shopify_domain", null: false
    t.string "shopify_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shopify_domain"], name: "index_shops_on_shopify_domain", unique: true
  end

  create_table "surveys", force: :cascade do |t|
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "survey_code"
    t.string "survey_desc"
    t.index ["question_id"], name: "index_surveys_on_question_id"
  end

end
