use Mix.Config

config :phx_docs, PhxDocs.Web.Endpoint,
  http: [port: 4001],
  server: false

config :logger, level: :warn
