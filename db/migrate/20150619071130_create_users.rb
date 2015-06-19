class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :avtar

      t.timestamps null: false
    end
  end
end
