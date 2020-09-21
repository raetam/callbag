# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :callbag,
  ecto_repos: [Callbag.Repo]

# Configures the endpoint
config :callbag, CallbagWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xucrx02eBJWJ3BfZHrdJ+QI/16c/m/oaA8MZw/2QvS93YZXvEr3T5CASMSVy7Gvt",
  render_errors: [view: CallbagWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Callbag.PubSub,
  live_view: [signing_salt: "/AkqW4V1"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
