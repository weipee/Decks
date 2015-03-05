class CreatePosttags < ActiveRecord::Migration
  def change
    create_table :posts do |p|
      p.string :title, :null => false
      p.string :body, :null => false
      p.timestamps null: false
    end

    create_table :tags do |t|
      t.string :name, :null => false
      t.timestamps null: false

    end

    create_table :post_tags do |p|
      p.belongs_to :post, index: true
      p.belongs_to :tag, index:true
      p.timestamps null: false
    end
  end
end
