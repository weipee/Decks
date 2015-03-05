class CreateCards < ActiveRecord::Migration
  def change
    create_table :decks do |t|
    t.integer :deck_id
    t.string :answer
    t.string :questions

    t.timestamps null: false
  end
  end
end
