class MoveIngredients < ActiveRecord::Migration[5.0]

  def up
    Recepe.all.each do |recepe|
			# create new ingredients_entry and add ingredients 
      if recepe.ingredients
        recepe.ingredients_entries.create!(ingredients: recepe.ingredients)
      end
    end
		remove_column :recepes, :ingredients
  end

  def down
		add_column :recepes, :ingredients
    Recepe.all.each do |recepe|
			# add all ingredients_entries to one ingredients text
			all_ingredients = ""
			recepe.ingredients_entries.each |ingredient|
      	all_ingredients = all_ingredients + ingredient + ", "
			end
      recepe.ingredients = all_ingredients
      recepe.save!
    end
  end
end
