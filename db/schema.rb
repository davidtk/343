# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 1) do

  create_table "analytics", :force => true do |t|
    t.integer  "content_id"
    t.integer  "interaction_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contents", :force => true do |t|
    t.string   "type"
    t.string   "title"
    t.integer  "author_id"
    t.integer  "editor_id"
    t.integer  "quay_id"
    t.text     "body"
    t.string   "dearx"
    t.string   "fromx"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interactions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions_roles", :id => false, :force => true do |t|
    t.integer "permission_id"
    t.integer "role_id"
  end

  add_index "permissions_roles", ["permission_id", "role_id"], :name => "index_permissions_roles_on_permission_id_and_role_id", :unique => true

  create_table "quays", :force => true do |t|
    t.string   "name"
    t.string   "contenttype"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  add_index "roles_users", ["user_id", "role_id"], :name => "index_roles_users_on_user_id_and_role_id", :unique => true

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "realname"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
