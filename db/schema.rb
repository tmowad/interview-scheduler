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

ActiveRecord::Schema.define(version: 20140604020537) do

  create_table "interviews", force: true do |t|
    t.string   "interview_status"
    t.string   "recruiter_email"
    t.string   "recruiter_key"
    t.string   "candidate_email"
    t.string   "candidate_key"
    t.string   "hiring_manager_email"
    t.string   "hiring_manager_key"
    t.string   "job_title"
    t.string   "job_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
