class CreateLables < ActiveRecord::Migration
  def change
    create_table :lables do |t|
      t.string :lablestr

      t.timestamps null: false
    end
  end
end
