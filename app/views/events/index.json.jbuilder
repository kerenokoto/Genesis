json.array!(@events) do |event|
  json.extract! event, :id, :date, :title, :venue, :description, :picture, :rating
  json.url event_url(event, format: :json)
end
