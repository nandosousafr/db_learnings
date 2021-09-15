json.extract! contato, :id, :name, :phone, :email, :created_at, :updated_at
json.url contato_url(contato, format: :json)
