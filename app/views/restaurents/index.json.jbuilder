json.array!(@restaurents) do |restaurent|
  json.extract! restaurent, :id
  json.url restaurent_url(restaurent, format: :json)
end
