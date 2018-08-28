# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
  SlateFinder.Repo.insert!(%SlateFinder.App.Location{name: "Amsterdam Billiards", address_line_1: "110 E. 11th St.", city: "New York", state: "NY", zip_code: "10003", latitude: 40.731741, longitude: -73.989836})
  SlateFinder.Repo.insert!(%SlateFinder.App.Location{name: "Ocean's 8 at Brownstone Billiards", address_line_1: "308 Flatbush Ave.", city: "Brooklyn", state: "NY", zip_code: "11238", latitude: 40.6773994, longitude: -73.9750479})
  SlateFinder.Repo.insert!(%SlateFinder.App.Location{name: "Fat Cat", address_line_1: "75 Christopher St.", city: "New York", state: "NY", zip_code: "10014", latitude: 40.7336383, longitude: -74.0055136})
  SlateFinder.Repo.insert!(%SlateFinder.App.Location{name: "Eastside Billiards", address_line_1: "163 E. 86th St.", city: "New York", state: "NY", zip_code: "10028", latitude: 40.779577, longitude: -73.954437})
  SlateFinder.Repo.insert!(%SlateFinder.App.Location{name: "Carmelo's", address_line_1: "1544 Dekalb Ave.", city: "Brooklyn", state: "NY", zip_code: "11237", latitude: 40.702817, longitude: -73.920453})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.