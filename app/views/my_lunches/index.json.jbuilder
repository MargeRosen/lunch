json.array!(@my_lunches) do |my_lunch|
  json.extract! my_lunch, :meal, :bu, :cost
  json.url my_lunch_url(my_lunch, format: :json)
end
