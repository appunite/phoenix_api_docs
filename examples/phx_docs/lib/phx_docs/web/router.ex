defmodule PhxDocs.Web.Router do
  use PhxDocs.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhxDocs.Web do
    pipe_through :api

    resources "/users", UserController, only: [:index]
  end
end
