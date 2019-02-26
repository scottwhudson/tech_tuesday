defmodule TechThursdayWeb.PageController do
  use TechThursdayWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
