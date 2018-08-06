defmodule Slatefinder.Repo.Migrations.AddLocationsTable do
  use Ecto.Migration

  def change do
    create table(:locations) do
      add :name, :string, size: 100
      add :street_address, :string, size: 50
      add :city, :string, size: 50
      add :state_abbr, :string, size: 10
      add :zip_code, :string, size: 10
      add :n_tables, :integer
      add :table_quality, :float
      add :table_price, :float
      add :busy_level, :float
      add :player_level, :float
      add :food, :boolean

      timestamps()
    end
  end
end
