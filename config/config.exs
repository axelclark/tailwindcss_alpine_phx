# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hello_tw_alpine,
  ecto_repos: [HelloTwAlpine.Repo]

# Configures the endpoint
config :hello_tw_alpine, HelloTwAlpineWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9n6LUmoYGqVR2cwdHhiFmQ2tTWubTRYs3AG6h4Y7zUxOaSb7cIY64z/y6bTP34Cc",
  render_errors: [view: HelloTwAlpineWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: HelloTwAlpine.PubSub,
  live_view: [signing_salt: "4MT5Fm1Y"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
