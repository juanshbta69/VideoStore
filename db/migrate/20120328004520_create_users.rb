class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :e_mail
      t.string :phone_number
      t.string :address
      t.string :role
      t.string :password

      t.timestamps
    end
  end
end
