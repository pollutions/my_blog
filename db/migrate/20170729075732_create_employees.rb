class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
	    t.string   "name"
	    t.string   "gender", comment: "sex" 
	    t.string   "mobile"
	    t.string   "office_tel", comment: "office_id" 
	    t.integer  "department_id", comment: "department" 
	    t.datetime "created_at",                                      null: false
	    t.datetime "updated_at",                                      null: false
	    t.string   "email",                             default: "",  null: false
	    t.string   "encrypted_password",                default: "",  null: false
	    t.string   "reset_password_token"
	    t.datetime "reset_password_sent_at"
	    t.datetime "remember_created_at"
	    t.integer  "sign_in_count",                     default: 0,   null: false
	    t.datetime "current_sign_in_at"
	    t.datetime "last_sign_in_at"
	    t.string   "current_sign_in_ip"
	    t.string   "last_sign_in_ip"
	    t.integer  "employee_status", comment: "state " 
	    t.datetime "joined_date", comment: "insert time"
    end
  end
end
