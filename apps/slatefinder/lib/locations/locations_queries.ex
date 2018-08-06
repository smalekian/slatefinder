defmodule Slatefinder.LocationsQueries do
  import Ecto.Query

  alias Slatefinder.{Repo, Locations}

  def any do
    Repo.one(from l in Locations, select: count(l.id)) != 0
  end

  def get_all do
    Repo.all(from Locations)
  end

  def get_all_for_zipcode(zipcode) do
    query = from l in Locations,
      where: l.zip_code == ^zipcode
    
    Repo.all(query)
  end

  def get_by_name(name) do
    Repo.get(Locations, name)
  end

  def create(location) do
    Repo.insert!(location)
  end

end