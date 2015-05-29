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

ActiveRecord::Schema.define(version: 20150529002738) do

  create_table "clientes", force: :cascade do |t|
    t.string   "codigo_dni", limit: 255
    t.string   "nombre",     limit: 255
    t.string   "apellido",   limit: 255
    t.date     "fecha_naci"
    t.string   "direccion",  limit: 255
    t.string   "distrito",   limit: 255
    t.string   "email",      limit: 255
    t.string   "clave",      limit: 255
    t.string   "delivery",   limit: 255
    t.string   "telefono",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "correos", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "email",      limit: 255
    t.string   "asunto",     limit: 255
    t.text     "mensaje",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "empresas", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "ruc",        limit: 255
    t.string   "direccion",  limit: 255
    t.string   "telefono",   limit: 255
    t.string   "moneda",     limit: 255
    t.string   "igv",        limit: 255
    t.text     "about_1",    limit: 65535
    t.text     "about_2",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "locals", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "ciudad",     limit: 255
    t.string   "direccion",  limit: 255
    t.string   "telefono",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string   "codigo",      limit: 255
    t.string   "nombre_menu", limit: 255
    t.string   "tipo_menu",   limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "promocions", force: :cascade do |t|
    t.string   "nombre",      limit: 255
    t.text     "descripcion", limit: 65535
    t.string   "imagen",      limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombres",    limit: 255
    t.string   "dni",        limit: 255
    t.string   "email",      limit: 255
    t.string   "clave",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "local",      limit: 255
    t.string   "tipo",       limit: 255
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree

end
