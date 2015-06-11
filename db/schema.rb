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

ActiveRecord::Schema.define(version: 20150611050546) do

  create_table "admis", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "username",               limit: 255
    t.string   "lastname",               limit: 255
    t.string   "fechadenacimiento",      limit: 255
    t.string   "dni",                    limit: 255
    t.string   "direccion",              limit: 255
    t.string   "distrito",               limit: 255
    t.string   "telefono",               limit: 255
  end

  add_index "admis", ["email"], name: "index_admis_on_email", unique: true, using: :btree
  add_index "admis", ["reset_password_token"], name: "index_admis_on_reset_password_token", unique: true, using: :btree

  create_table "carritos", force: :cascade do |t|
    t.string   "menu",       limit: 255
    t.string   "menu1",      limit: 255
    t.string   "cantidad",   limit: 255
    t.decimal  "precio",                 precision: 10
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

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

  create_table "comidas", force: :cascade do |t|
    t.string   "dia",        limit: 255
    t.string   "fecha",      limit: 255
    t.string   "codigo",     limit: 255
    t.string   "menu",       limit: 255
    t.string   "tipo",       limit: 255
    t.string   "ciudad",     limit: 255
    t.string   "local",      limit: 255
    t.integer  "cantidad",   limit: 4
    t.float    "precio",     limit: 24
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
    t.string   "logo",       limit: 255
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

  create_table "pedidos", force: :cascade do |t|
    t.integer  "numero",      limit: 4
    t.date     "fecha"
    t.string   "nombre",      limit: 255
    t.string   "dni",         limit: 255
    t.string   "telefono",    limit: 255
    t.string   "email",       limit: 255
    t.string   "local",       limit: 255
    t.string   "menu",        limit: 255
    t.string   "menu1",       limit: 255
    t.integer  "cantidad",    limit: 4
    t.float    "precio",      limit: 24
    t.string   "delivery",    limit: 255
    t.string   "observacion", limit: 255
    t.integer  "usuario_id",  limit: 4
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

  create_table "uploads", force: :cascade do |t|
    t.integer  "creator_id",          limit: 4
    t.string   "name",                limit: 255
    t.string   "caption",             limit: 1000
    t.text     "description",         limit: 65535
    t.boolean  "is_public",           limit: 1,     default: true
    t.integer  "uploadable_id",       limit: 4
    t.string   "uploadable_type",     limit: 255
    t.string   "width",               limit: 255
    t.string   "height",              limit: 255
    t.string   "local_file_name",     limit: 255
    t.string   "local_content_type",  limit: 255
    t.integer  "local_file_size",     limit: 4
    t.datetime "local_updated_at"
    t.string   "remote_file_name",    limit: 255
    t.string   "remote_content_type", limit: 255
    t.integer  "remote_file_size",    limit: 4
    t.datetime "remote_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "uploads", ["creator_id"], name: "index_uploads_on_creator_id", using: :btree
  add_index "uploads", ["local_content_type"], name: "index_uploads_on_local_content_type", using: :btree
  add_index "uploads", ["uploadable_id"], name: "index_uploads_on_uploadable_id", using: :btree
  add_index "uploads", ["uploadable_type"], name: "index_uploads_on_uploadable_type", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "username",               limit: 255
    t.string   "lastname",               limit: 255
    t.string   "fechadenacimiento",      limit: 255
    t.string   "dni",                    limit: 255
    t.string   "direccion",              limit: 255
    t.string   "distrito",               limit: 255
    t.string   "telefono",               limit: 255
    t.string   "diredeli",               limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

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
