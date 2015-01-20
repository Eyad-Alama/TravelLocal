json.array!(@trips) do |trip|
  json.extract! trip, :id, :title, :description, :cover_image, :price_per_person, :number_of_people, :duration, :highlights, :includes
  json.url trip_url(trip, format: :json)
end
