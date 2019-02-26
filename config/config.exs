# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tech_thursday,
  ecto_repos: [TechThursday.Repo]

# Configures the endpoint
config :tech_thursday, TechThursdayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ymn5U794QYhcRF2FYUZ27h3pGOBeG+yDD4F1kCblBhu1MkKv7kyA99niC+eYD811",
  render_errors: [view: TechThursdayWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TechThursday.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
