defmodule SlateFinderWeb.PageController do
  use SlateFinderWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
