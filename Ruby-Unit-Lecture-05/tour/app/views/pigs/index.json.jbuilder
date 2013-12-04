json.array!(@pigs) do |pig|
  json.extract! pig, :id, :name, :curly_tail, :age
  json.url pig_url(pig, format: :json)
end
