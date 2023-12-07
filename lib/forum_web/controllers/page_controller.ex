defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{name: "Abdullah", email: "abdullah@test.com"},
      %{name: "Ahmad", email: "ahmad@test.com"},
      %{name: "Ali", email: "ali@test.com"}
    ]

    json(conn, users)
  end
end
