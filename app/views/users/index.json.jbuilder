json.array!(@users) do |user|
  json.extract! user, :id, :name, :password_digert
  json.url user_url(user, format: :json)
end
