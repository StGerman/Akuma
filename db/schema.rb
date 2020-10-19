# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_19_104644) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.bigint "person_id"
    t.bigint "task_id"
    t.integer "kind"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "author_id"
    t.index ["author_id"], name: "index_actions_on_author_id"
    t.index ["person_id"], name: "index_actions_on_person_id"
    t.index ["task_id"], name: "index_actions_on_task_id"
  end

  create_table "affiliations", force: :cascade do |t|
    t.integer "value"
    t.bigint "category_id", null: false
    t.bigint "task_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "affilatable_id", null: false
    t.string "affilatable_type", null: false
    t.index ["affilatable_type", "affilatable_id"], name: "index_affiliations_on_affilatable_type_and_affilatable_id", unique: true
    t.index ["category_id"], name: "index_affiliations_on_category_id"
    t.index ["task_id"], name: "index_affiliations_on_task_id"
  end

  create_table "assignments", force: :cascade do |t|
    t.integer "assigne_id"
    t.bigint "task_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assigne_id"], name: "index_assignments_on_assigne_id"
    t.index ["task_id"], name: "index_assignments_on_task_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.boolean "suggest"
    t.index ["name"], name: "index_categories_on_name", unique: true
    t.index ["slug"], name: "index_categories_on_slug", unique: true
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "affiliations", "categories"
  add_foreign_key "affiliations", "tasks"
  add_foreign_key "assignments", "tasks"
end
