class Recepe < ActiveRecord::Base
	has_many :ingredients_entries

	def list_ingredients
		all_ingredients = ""
		self.ingredients_entries.each do |entry|
			all_ingredients = all_ingredients + entry.ingredient + ", "
		end
		return all_ingredients
	end
end
