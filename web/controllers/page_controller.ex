defmodule Squashtourney.PageController do
  use Squashtourney.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
