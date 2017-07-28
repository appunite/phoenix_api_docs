use Mix.Config

config :phx_docs, PhxDocs.Web.Endpoint,
  on_init: {PhxDocs.Web.Endpoint, :load_from_system_env, []},
  url: [host: "example.com", port: 80],
  cache_static_manifest: "priv/static/cache_manifest.json"

config :logger, level: :info

config :phoenix, :serve_endpoints, true

import_config "prod.secret.exs"
