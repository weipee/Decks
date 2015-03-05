class CreateGuessess < ActiveRecord::Migration
  def change
    create table :guessess do |t|
      t.integer :round_id
      t.integer :wrong, default:0
      t.integer :correct, default:0

    t.timestamps null: false
  end
end
