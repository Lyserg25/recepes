json.extract! ingredients_entry, :id, :recepe_id, :ingredient, :created_at, :updated_at
json.url ingredients_entry_url(ingredients_entry, format: :json)