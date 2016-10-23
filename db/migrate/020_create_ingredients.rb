class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.references :recepe, index: true, foreign_key: true
      t.text :ingredient

      t.timestamps null: false
    end
  end
end
