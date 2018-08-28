defmodule SlateFinder.Repo.Migrations.CreateLocations do
  use Ecto.Migration

  def change do
    create table(:locations) do
      add :name, :string
      add :address_line_1, :string
      add :address_line_2, :string
      add :city, :string
      add :state, :string
      add :zip_code, :string
      add :latitude, :float
      add :longitude, :float

      timestamps()
    end

  end
end
