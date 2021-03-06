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

ActiveRecord::Schema.define(version: 2020_12_15_023334) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "desarrollos", force: :cascade do |t|
    t.string "politicas"
    t.string "entornos"
    t.string "funcionalidad"
    t.string "aceptacion"
    t.bigint "empresa_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empresa_id"], name: "index_desarrollos_on_empresa_id"
  end

  create_table "empresas", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "politicas", force: :cascade do |t|
    t.string "conunto_politicas"
    t.string "revision_politica"
    t.bigint "empresa_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empresa_id"], name: "index_politicas_on_empresa_id"
  end

  create_table "teles", force: :cascade do |t|
    t.string "controles_redmecanismo_seg"
    t.string "segregacion_redes"
    t.string "procedimientos"
    t.string "intercambio"
    t.string "mensajeria"
    t.string "confidencialidad"
    t.bigint "empresa_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empresa_id"], name: "index_teles_on_empresa_id"
  end

  add_foreign_key "desarrollos", "empresas"
  add_foreign_key "politicas", "empresas"
  add_foreign_key "teles", "empresas"
end
