class CreateRecepes < ActiveRecord::Migration
  def change
    create_table :recepes do |t|
      t.string :title
      t.string :category
      t.integer :people
      t.string :difficulty
      t.integer :duration
      t.text :ingredients
      t.text :preparation
      t.string :tag
      t.integer :rating

      t.timestamps null: false
    end
  end
end
