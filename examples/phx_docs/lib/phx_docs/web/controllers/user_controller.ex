defmodule PhxDocs.Web.UserController do
  use PhxDocs.Web, :controller
  use PhoenixApiDocs.Controller

  action_fallback PhxDocs.Web.FallbackController

  api :GET, "/api/users" do
    # group "Comment" # If not provided, it will be guessed from the controller name (resource name)
    title "List all users"
    description "Optional description that will be displayed in the documentation"
    note "Optional note that will be displayed in the documentation"
  end
  def index(conn, _params) do
    users = build_list(10, :user)
    render(conn, "index.json", users: users)
  end
end
