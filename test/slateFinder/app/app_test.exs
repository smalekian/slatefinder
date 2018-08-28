defmodule SlateFinder.AppTest do
  use SlateFinder.DataCase

  alias SlateFinder.App

  describe "locations" do
    alias SlateFinder.App.Location

    @valid_attrs %{address_line_1: "some address_line_1", address_line_2: "some address_line_2", city: "some city", latitude: 120.5, longitude: 120.5, name: "some name", state: "some state", zip_code: "some zip_code"}
    @update_attrs %{address_line_1: "some updated address_line_1", address_line_2: "some updated address_line_2", city: "some updated city", latitude: 456.7, longitude: 456.7, name: "some updated name", state: "some updated state", zip_code: "some updated zip_code"}
    @invalid_attrs %{address_line_1: nil, address_line_2: nil, city: nil, latitude: nil, longitude: nil, name: nil, state: nil, zip_code: nil}

    def location_fixture(attrs \\ %{}) do
      {:ok, location} =
        attrs
        |> Enum.into(@valid_attrs)
        |> App.create_location()

      location
    end

    test "list_locations/0 returns all locations" do
      location = location_fixture()
      assert App.list_locations() == [location]
    end

    test "get_location!/1 returns the location with given id" do
      location = location_fixture()
      assert App.get_location!(location.id) == location
    end

    test "create_location/1 with valid data creates a location" do
      assert {:ok, %Location{} = location} = App.create_location(@valid_attrs)
      assert location.address_line_1 == "some address_line_1"
      assert location.address_line_2 == "some address_line_2"
      assert location.city == "some city"
      assert location.latitude == 120.5
      assert location.longitude == 120.5
      assert location.name == "some name"
      assert location.state == "some state"
      assert location.zip_code == "some zip_code"
    end

    test "create_location/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = App.create_location(@invalid_attrs)
    end

    test "update_location/2 with valid data updates the location" do
      location = location_fixture()
      assert {:ok, location} = App.update_location(location, @update_attrs)
      assert %Location{} = location
      assert location.address_line_1 == "some updated address_line_1"
      assert location.address_line_2 == "some updated address_line_2"
      assert location.city == "some updated city"
      assert location.latitude == 456.7
      assert location.longitude == 456.7
      assert location.name == "some updated name"
      assert location.state == "some updated state"
      assert location.zip_code == "some updated zip_code"
    end

    test "update_location/2 with invalid data returns error changeset" do
      location = location_fixture()
      assert {:error, %Ecto.Changeset{}} = App.update_location(location, @invalid_attrs)
      assert location == App.get_location!(location.id)
    end

    test "delete_location/1 deletes the location" do
      location = location_fixture()
      assert {:ok, %Location{}} = App.delete_location(location)
      assert_raise Ecto.NoResultsError, fn -> App.get_location!(location.id) end
    end

    test "change_location/1 returns a location changeset" do
      location = location_fixture()
      assert %Ecto.Changeset{} = App.change_location(location)
    end
  end
end
