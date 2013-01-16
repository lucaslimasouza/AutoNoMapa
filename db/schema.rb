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

ActiveRecord::Schema.define(:version => 20130116154931) do

  create_table "addresses", :force => true do |t|
    t.string   "street"
    t.string   "neighborhood"
    t.string   "number"
    t.integer  "city_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "profile_id"
  end

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

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "father_id"
  end

  create_table "categories_profiles", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "profile_id"
  end

  add_index "categories_profiles", ["category_id", "profile_id"], :name => "index_categories_profiles_on_category_id_and_profile_id"
  add_index "categories_profiles", ["profile_id", "category_id"], :name => "index_categories_profiles_on_profile_id_and_category_id"

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.boolean  "capital"
    t.integer  "state_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "freelances", :force => true do |t|
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
    t.string   "avatar"
  end

  add_index "freelances", ["email"], :name => "index_freelances_on_email", :unique => true
  add_index "freelances", ["reset_password_token"], :name => "index_freelances_on_reset_password_token", :unique => true

  create_table "indications", :force => true do |t|
    t.integer  "searcher_id"
    t.integer  "freelance_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "profiles", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "cell_phone"
    t.string   "nickname"
    t.string   "experience"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "freelance_id"
    t.string   "avatar"
    t.string   "description"
    t.string   "courses"
    t.string   "kind"
  end

  create_table "searchers", :force => true do |t|
    t.string   "name"
    t.string   "avatar"
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

  add_index "searchers", ["email"], :name => "index_searchers_on_email", :unique => true
  add_index "searchers", ["reset_password_token"], :name => "index_searchers_on_reset_password_token", :unique => true

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
