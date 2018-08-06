defmodule Slatefinder.Locations do
  use Ecto.Schema

  import Ecto.Changeset

  schema "locations" do
    field(:name, :string)
    field(:street_address, :string)
    field(:city, :string)
    field(:state_abbr, :string)
    field(:zip_code, :string)
    field(:n_tables, :integer)
    field(:table_quality, :float)
    field(:table_price, :float)
    field(:busy_level, :float)
    field(:player_level, :float)
    field(:food, :boolean)

    timestamps()
  end

  @required_fields ~w(name street_address city state_abbr zip_code n_tables)a

  def changeset(location, params \\ %{}) do
    location
    |> cast(params, @required_fields)
    |> validate_required(@required_fields)
  end
end