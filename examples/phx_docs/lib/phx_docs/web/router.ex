defmodule PhxDocs.Web.Router do
  use PhxDocs.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhxDocs.Web do
    pipe_through :api
  end
end
