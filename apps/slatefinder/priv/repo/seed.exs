unless(Slatefinder.LocationsQueries.any) do

  Slatefinder.LocationsQueries.create(Slatefinder.Locations.changeset(%Slatefinder.Locations{}, %{name: "Amsterdam Billiards", street_address: "110 E. 11th St.", city: "New York", state_abbr: "NY", zip_code: "10003", n_tables: 25}))
  Slatefinder.LocationsQueries.create(Slatefinder.Locations.changeset(%Slatefinder.Locations{}, %{name: "Ocean's 8 at Brownstone Billiards", street_address: "308 Flatbush Ave.", city: "Brooklyn", state_abbr: "NY", zip_code: "11238", n_tables: 30}))
  Slatefinder.LocationsQueries.create(Slatefinder.Locations.changeset(%Slatefinder.Locations{}, %{name: "Fat Cat", street_address: "75 Christopher St.", city: "New York", state_abbr: "NY", zip_code: "10014", n_tables: 10}))
  Slatefinder.LocationsQueries.create(Slatefinder.Locations.changeset(%Slatefinder.Locations{}, %{name: "Eastside Billiards", street_address: "163 E. 86th St.", city: "New York", state_abbr: "NY", zip_code: "10028", n_tables: 16}))
  Slatefinder.LocationsQueries.create(Slatefinder.Locations.changeset(%Slatefinder.Locations{}, %{name: "Carmelo's", street_address: "1544 Dekalb Ave.", city: "Brooklyn", state_abbr: "NY", zip_code: "11237", n_tables: 2}))

end