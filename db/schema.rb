# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_04_04_033108) do
  create_table "alimentos", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "almacens", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cuenta_bancaria", force: :cascade do |t|
    t.string "number"
    t.string "bank"
    t.string "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donacions", force: :cascade do |t|
    t.integer "producto_id", null: false
    t.integer "alimento_id", null: false
    t.integer "solicitud_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alimento_id"], name: "index_donacions_on_alimento_id"
    t.index ["producto_id"], name: "index_donacions_on_producto_id"
    t.index ["solicitud_id"], name: "index_donacions_on_solicitud_id"
  end

  create_table "economicas", force: :cascade do |t|
    t.text "description"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "establecimientos", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventarios", force: :cascade do |t|
    t.string "elementos"
    t.integer "cantidad"
    t.string "ubicacion"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizacion_beneficas", force: :cascade do |t|
    t.string "nombre"
    t.string "tipo"
    t.decimal "latitud"
    t.decimal "longitud"
    t.string "email"
    t.string "CI"
    t.integer "economica_id", null: false
    t.string "nro_de_cuenta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["economica_id"], name: "index_organizacion_beneficas_on_economica_id"
  end

  create_table "personas", force: :cascade do |t|
    t.string "name"
    t.string "identification"
    t.string "phone"
    t.string "email"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responsables", force: :cascade do |t|
    t.string "name"
    t.string "identification"
    t.string "phone"
    t.string "email"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solicituds", force: :cascade do |t|
    t.integer "voluntario_id", null: false
    t.integer "organizacion_benefica_id", null: false
    t.integer "inventario_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventario_id"], name: "index_solicituds_on_inventario_id"
    t.index ["organizacion_benefica_id"], name: "index_solicituds_on_organizacion_benefica_id"
    t.index ["user_id"], name: "index_solicituds_on_user_id"
    t.index ["voluntario_id"], name: "index_solicituds_on_voluntario_id"
  end

  create_table "voluntarios", force: :cascade do |t|
    t.integer "persona_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["persona_id"], name: "index_voluntarios_on_persona_id"
  end

  add_foreign_key "donacions", "alimentos"
  add_foreign_key "donacions", "productos"
  add_foreign_key "donacions", "solicituds"
  add_foreign_key "organizacion_beneficas", "economicas"
  add_foreign_key "solicituds", "inventarios"
  add_foreign_key "solicituds", "organizacion_beneficas"
  add_foreign_key "solicituds", "users"
  add_foreign_key "solicituds", "voluntarios"
  add_foreign_key "voluntarios", "personas"
end
