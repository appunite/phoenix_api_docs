defmodule PhxDocs.Web.UserController do
  use PhxDocs.Web, :controller

  action_fallback PhxDocs.Web.FallbackController

  def index(conn, _params) do
    users = build_list(10, :user)
    render(conn, "index.json", users: users)
  end
end
