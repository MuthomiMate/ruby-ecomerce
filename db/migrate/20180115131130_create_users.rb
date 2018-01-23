class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email, unique: true, null: false
      t.string :name, null: false
      t.string :password, null:false
      t.string :registered_at

      t.timestamps null: false
    end
  end
end
