ActiveRecord::Schema.define(version: 2022_12_16_163621) do
  create_table "toys", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "uname"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.bigint "phone"
    t.integer "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
