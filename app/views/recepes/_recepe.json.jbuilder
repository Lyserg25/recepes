json.extract! recepe, :id, :title, :category, :people, :difficulty, :duration, :ingredients, :preparation, :tag, :rating, :created_at, :updated_at
json.url recepe_url(recepe, format: :json)