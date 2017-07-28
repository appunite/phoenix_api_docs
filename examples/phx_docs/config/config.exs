# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :phx_docs, PhxDocs.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rNp0wN/prrk5XBcmmvFDbFgVZ6pOWvmFejOE2q5nZqX0/H4vJuJOn26JmIEX7aNk",
  render_errors: [view: PhxDocs.Web.ErrorView, accepts: ~w(json)],
  pubsub: [name: PhxDocs.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configures PhoenixApiDocs
config :phoenix_api_docs,
  docs_path: "priv/docs",
  theme: "triple",
  router: PhxDocs.Web.Router

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
