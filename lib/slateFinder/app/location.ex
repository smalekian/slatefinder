defmodule SlateFinder.App.Location do
  use Ecto.Schema
  import Ecto.Changeset


  schema "locations" do
    field :address_line_1, :string
    field :address_line_2, :string
    field :city, :string
    field :latitude, :float
    field :longitude, :float
    field :name, :string
    field :state, :string
    field :zip_code, :string

    timestamps()
  end

  @doc false
  def changeset(location, attrs) do
    location
    |> cast(attrs, [:name, :address_line_1, :address_line_2, :city, :state, :zip_code, :latitude, :longitude])
    |> validate_required([:name, :address_line_1, :city, :state, :zip_code, :latitude, :longitude])
  end
end
