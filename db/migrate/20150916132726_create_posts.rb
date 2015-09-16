class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.references :user, index: true
      t.references :circle, index: true

      t.timestamps null: false
    end
    add_foreign_key :posts, :users
    add_foreign_key :posts, :circles
  end
end
