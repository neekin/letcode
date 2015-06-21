json.array!(@lables) do |lable|
  json.extract! lable, :id, :lablestr
  json.url lable_url(lable, format: :json)
end
