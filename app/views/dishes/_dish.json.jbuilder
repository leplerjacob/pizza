json.extract! dish, :id, :title, :ready_in_minutes, :image, :summary, :sourceurl, :created_at, :updated_at
json.url dish_url(dish, format: :json)
