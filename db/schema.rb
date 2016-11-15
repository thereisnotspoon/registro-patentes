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

ActiveRecord::Schema.define(version: 20161031200645) do

  create_table "graficos", force: :cascade do |t|
    t.text     "grafico",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "patente_id", limit: 4
  end

  add_index "graficos", ["patente_id"], name: "index_graficos_on_patente_id", using: :btree

  create_table "patente_personas", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "patente_id",   limit: 4
    t.integer  "persona_id",   limit: 4
    t.string   "tipo_persona", limit: 255
  end

  add_index "patente_personas", ["patente_id"], name: "index_patente_personas_on_patente_id", using: :btree
  add_index "patente_personas", ["persona_id"], name: "index_patente_personas_on_persona_id", using: :btree

  create_table "patentes", force: :cascade do |t|
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "tipo_expediente",              limit: 255
    t.string   "fecha_presentacion",           limit: 255
    t.string   "numero_solicitud",             limit: 255
    t.string   "fecha_de_presentacion_intern", limit: 255
    t.string   "numero_solicitud_intern",      limit: 255
    t.string   "fecha_de_publicacion_intern",  limit: 255
    t.string   "numero_publicacion_intern",    limit: 255
    t.string   "denominacion_titulo",          limit: 255
    t.string   "solicitante_titular",          limit: 255
    t.string   "inventor",                     limit: 255
    t.string   "prioridad",                    limit: 255
    t.string   "clase_ipc",                    limit: 255
    t.string   "resumen",                      limit: 255
    t.string   "graficos",                     limit: 255
    t.string   "representante",                limit: 255
    t.string   "correspondencia",              limit: 255
  end

  create_table "personas", force: :cascade do |t|
    t.string   "apellidos",                limit: 255
    t.string   "nombres",                  limit: 255
    t.string   "pais_de_origen",           limit: 255
    t.string   "documeto_de_dentificaion", limit: 255
    t.string   "numero_de_documento",      limit: 255
    t.string   "fecha_de_nacimiento",      limit: 255
    t.string   "fecha_de_defuncion",       limit: 255
    t.string   "pais_de_residencia",       limit: 255
    t.string   "lugar",                    limit: 255
    t.string   "direccion",                limit: 255
    t.string   "telefonos",                limit: 255
    t.string   "faxes",                    limit: 255
    t.string   "codigo_postal",            limit: 255
    t.string   "persona_natural",          limit: 255
    t.string   "residente_en_ecuador",     limit: 255
    t.string   "codigo",                   limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_foreign_key "graficos", "patentes"
  add_foreign_key "patente_personas", "patentes"
  add_foreign_key "patente_personas", "personas"
end
