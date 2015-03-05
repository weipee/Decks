class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do  |t|
      t_string :email
      t_string :password

      t.timestamps null: false
    end
  end
end
