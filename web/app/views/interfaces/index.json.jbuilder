json.array!(@interfaces) do |interface|
  json.extract! interface, :id
  json.url interface_url(interface, format: :json)
end
