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

ActiveRecord::Schema.define(version: 20160225225613) do

  create_table "mensajes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "mail"
    t.string   "telefono"
    t.string   "consulta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "leido"
  end

  create_table "personas", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "foto"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "servicios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "foto_front"
    t.string   "foto_back"
  end

  create_table "servicios_lists", force: :cascade do |t|
    t.string   "servicio"
    t.string   "descripcion"
    t.integer  "servicios_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "servicio_id"
  end

  add_index "servicios_lists", ["servicios_id"], name: "index_servicios_lists_on_servicios_id"

end
