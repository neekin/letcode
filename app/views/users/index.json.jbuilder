json.array!(@users) do |user|
  json.extract! user, :id, :nickname, :username, :email, :password_digest, :'avatar_uploader.rb'
  json.url user_url(user, format: :json)
end
