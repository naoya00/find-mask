json.array! @shops do |shop|
  json.id shop.id
  json.shopname shop.name
  json.station shop.station
  json.station_walk shop.station_walk
  json.masks shop.masks
end