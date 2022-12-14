class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :email
      t.bigint :phone
      t.integer :admin, default: 0, null: false
      t.timestamps
    end
  end
end