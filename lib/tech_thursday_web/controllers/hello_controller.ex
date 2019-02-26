defmodule TechThursdayWeb.HelloController do
  use TechThursdayWeb, :controller

  require IEx

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    IEx.pry
    render(conn, "show.html", messenger: messenger)
  end

  def show(conn, _) do
    render(conn, "show.html", messenger: "whatever")
  end
end
