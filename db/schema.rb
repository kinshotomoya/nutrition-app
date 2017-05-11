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

ActiveRecord::Schema.define(version: 20170511091832) do

  create_table "food_recipes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "food_id",    null: false
    t.integer  "recipe_id",  null: false
    t.integer  "amount",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_food_recipes_on_food_id", using: :btree
    t.index ["recipe_id"], name: "index_food_recipes_on_recipe_id", using: :btree
  end

  create_table "foods", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_foods_on_name", using: :btree
  end

  create_table "nutritives", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "enerc_kcal"
    t.string   "water"
    t.string   "protain"
    t.string   "protainb_by_amino"
    t.string   "lipid"
    t.string   "fantnlea"
    t.string   "fasat"
    t.string   "fams"
    t.string   "fapu"
    t.string   "carbohydrate"
    t.string   "choavlm"
    t.string   "fibsol"
    t.string   "fibins"
    t.string   "fibtg"
    t.string   "ash"
    t.string   "ne"
    t.string   "k"
    t.string   "ca"
    t.string   "mg"
    t.string   "p"
    t.string   "fe"
    t.string   "zn"
    t.string   "cu"
    t.string   "mn"
    t.string   "i_d"
    t.string   "se"
    t.string   "cr"
    t.string   "mo"
    t.string   "retol"
    t.string   "carta"
    t.string   "cartb"
    t.string   "crypxb"
    t.string   "cartbeq"
    t.string   "vita_rae"
    t.string   "vitd"
    t.string   "tocpha"
    t.string   "tocphb"
    t.string   "tocphg"
    t.string   "tocphd"
    t.string   "vitk"
    t.string   "thiahcl"
    t.string   "ribf"
    t.string   "nia"
    t.string   "vitb6a"
    t.string   "vitb12"
    t.string   "fol"
    t.string   "pantac"
    t.string   "biot"
    t.string   "vitc"
    t.string   "nacl_eq"
    t.string   "alc"
    t.string   "nitra"
    t.string   "thebrn"
    t.string   "caffn"
    t.string   "tan"
    t.string   "polyphent"
    t.string   "aceac"
    t.integer  "food_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "recipes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.string   "image"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_recipes_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name",                                null: false
    t.string   "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
