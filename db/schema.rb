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

ActiveRecord::Schema.define(version: 20170729075732) do

  create_table "attachments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "attachment_entity_type", limit: 64
    t.integer  "attachment_entity_id"
    t.string   "path"
    t.string   "name"
    t.string   "content_type"
    t.integer  "file_size"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "created_by",             limit: 64
    t.string   "tag"
    t.index ["attachment_entity_id"], name: "attachments_entity_idx", using: :btree
  end

  create_table "blogs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title",                                               comment: "BT"
    t.text     "content",     limit: 65535,                           comment: "NR"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "cover_img",                                           comment: "cover"
    t.integer  "category_id",                                         comment: "category"
    t.integer  "view_count",                                          comment: "view_count"
    t.integer  "seq",                       default: 10,              comment: "seq"
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "content",    limit: 65535
    t.integer  "blog_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "gender",                                           comment: "sex"
    t.string   "mobile"
    t.string   "office_tel",                                       comment: "office_id"
    t.integer  "department_id",                                    comment: "department"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "employee_status",                                  comment: "state "
    t.datetime "joined_date",                                      comment: "insert time"
  end

end
