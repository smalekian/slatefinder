defmodule SlateFinderWeb.LocationView do
  use SlateFinderWeb, :view
  alias SlateFinderWeb.LocationView

  def render("index.json", %{locations: locations}) do
    %{data: render_many(locations, LocationView, "location.json")}
  end

  def render("show.json", %{location: location}) do
    %{data: render_one(location, LocationView, "location.json")}
  end

  def render("location.json", %{location: location}) do
    %{id: location.id,
      name: location.name,
      address_line_1: location.address_line_1,
      address_line_2: location.address_line_2,
      city: location.city,
      state: location.state,
      zip_code: location.zip_code,
      latitude: location.latitude,
      longitude: location.longitude}
  end
end
