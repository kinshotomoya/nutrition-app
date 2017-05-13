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

ActiveRecord::Schema.define(version: 20170513085746) do

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
    t.integer  "nutritive_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["name"], name: "index_foods_on_name", using: :btree
    t.index ["nutritive_id"], name: "index_foods_on_nutritive_id", using: :btree
  end

  create_table "nutritives", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "enerc_kcal"
    t.integer  "water"
    t.integer  "protain"
    t.integer  "protainb_by_amino"
    t.integer  "lipid"
    t.integer  "fantnlea"
    t.integer  "fasat"
    t.integer  "fams"
    t.integer  "fapu"
    t.integer  "carbohydrate"
    t.integer  "choavlm"
    t.integer  "fibsol"
    t.integer  "fibins"
    t.integer  "fibtg"
    t.integer  "ash"
    t.integer  "ne"
    t.integer  "k"
    t.integer  "ca"
    t.integer  "mg"
    t.integer  "p"
    t.integer  "fe"
    t.integer  "zn"
    t.integer  "cu"
    t.integer  "mn"
    t.integer  "i_d"
    t.integer  "se"
    t.integer  "cr"
    t.integer  "mo"
    t.integer  "retol"
    t.integer  "carta"
    t.integer  "cartb"
    t.integer  "crypxb"
    t.integer  "cartbeq"
    t.integer  "vita_rae"
    t.integer  "vitd"
    t.integer  "tocpha"
    t.integer  "tocphb"
    t.integer  "tocphg"
    t.integer  "tocphd"
    t.integer  "vitk"
    t.integer  "thiahcl"
    t.integer  "ribf"
    t.integer  "nia"
    t.integer  "vitb6a"
    t.integer  "vitb12"
    t.integer  "fol"
    t.integer  "pantac"
    t.integer  "biot"
    t.integer  "vitc"
    t.integer  "nacl_eq"
    t.integer  "alc"
    t.integer  "nitra"
    t.integer  "thebrn"
    t.integer  "caffn"
    t.integer  "tan"
    t.integer  "polyphent"
    t.integer  "aceac"
    t.integer  "food_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["food_id"], name: "index_nutritives_on_food_id", using: :btree
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
