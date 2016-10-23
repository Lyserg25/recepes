class CreateIngredientsEntries < ActiveRecord::Migration
  def change
    create_table :ingredients_entries do |t|
      t.references :recepe, index: true, foreign_key: true
      t.text :ingredient

      t.timestamps null: false
    end
  end
end
