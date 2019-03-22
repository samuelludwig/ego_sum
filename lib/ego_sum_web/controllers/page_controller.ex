defmodule EgoSumWeb.PageController do
  use EgoSumWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
