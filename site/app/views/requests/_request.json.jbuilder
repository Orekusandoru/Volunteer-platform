json.extract! request, :id, :category, :first_name, :last_name, :email, :phone, :text_of_request, :created_at, :updated_at
json.url request_url(request, format: :json)
