json.extract! rocket, :id, :name, :company_id, :image, :created_at, :updated_at
json.url rocket_url(rocket, format: :json)
