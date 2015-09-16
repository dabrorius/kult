class CreateCircles < ActiveRecord::Migration
  def change
    create_table :circles do |t|
      t.string :name
      t.string :uuid
      t.text :description

      t.timestamps null: false
    end
  end
end
