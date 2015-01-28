class CreateAutenticacions < ActiveRecord::Migration
  def change
    create_table :autenticacions do |t|
      t.string :user
      t.string :crypted_password
      t.string :email

      t.timestamps null: false
    end
  end
end
