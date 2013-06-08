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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130601193429) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "berths", :force => true do |t|
    t.integer  "number"
    t.decimal  "length"
    t.decimal  "width"
    t.decimal  "depth"
    t.boolean  "exists"
    t.integer  "dock_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "berths", ["dock_id"], :name => "index_berths_on_dock_id"

  create_table "boats", :force => true do |t|
    t.string   "Omistaja"
    t.string   "JnoOm"
    t.string   "JnoOs"
    t.date     "RekPvm"
    t.date     "MuutosPvm"
    t.string   "Nimi"
    t.string   "tyyppi"
    t.string   "RekNro"
    t.string   "ValmMalli"
    t.decimal  "Pituus"
    t.decimal  "Leveys"
    t.decimal  "Syvyys"
    t.decimal  "Uppouma"
    t.decimal  "Korkeus"
    t.string   "Teho"
    t.integer  "Vuosimalli"
    t.string   "VenePuhA"
    t.string   "VenePuhB"
    t.string   "Huomautukset"
    t.integer  "Tarra"
    t.string   "Katsastus"
    t.string   "Laituri"
    t.string   "Telakka"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "docks", :force => true do |t|
    t.decimal  "length"
    t.integer  "berth_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "Nimi"
    t.integer  "Jno"
    t.string   "Sotu"
    t.date     "Liittynyt"
    t.string   "JK"
    t.date     "MuutosPvm"
    t.string   "Toimi"
    t.string   "Lisenssi"
    t.string   "Osoite"
    t.string   "Posti"
    t.string   "Maa"
    t.string   "KotiPuh"
    t.string   "MatkaPuh"
    t.string   "TyoPuh"
    t.string   "EmailFax"
    t.string   "Ammatti"
    t.string   "Laivuri"
    t.string   "Huom"
    t.string   "Varasto"
    t.string   "Avain"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ownerships", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
