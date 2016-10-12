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

ActiveRecord::Schema.define(version: 0) do

  create_table "error", id: false, force: :cascade do |t|
    t.integer  "code"
    t.string   "message"
    t.string   "fields"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feature", id: false, force: :cascade do |t|
    t.string   "name"
    t.decimal  "duration"
    t.string   "priority"
    t.string   "required_skills"
    t.string   "depends_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "next_release_problem", id: false, force: :cascade do |t|
    t.integer  "nb_weeks"
    t.decimal  "hours_per_week"
    t.string   "features"
    t.string   "resources"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "planned_feature", id: false, force: :cascade do |t|
    t.decimal  "begin_hour"
    t.decimal  "end_hour"
    t.string   "resource"
    t.string   "feature"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "planning_solution", id: false, force: :cascade do |t|
    t.string   "jobs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "priority", id: false, force: :cascade do |t|
    t.integer  "level"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resource", id: false, force: :cascade do |t|
    t.string   "name"
    t.decimal  "week_availability"
    t.string   "skills"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skill", id: false, force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
