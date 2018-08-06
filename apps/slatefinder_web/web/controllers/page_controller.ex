defmodule SlatefinderWeb.PageController do
  use SlatefinderWeb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
