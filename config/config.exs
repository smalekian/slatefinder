# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :slateFinder,
  ecto_repos: [SlateFinder.Repo]

# Configures the endpoint
config :slateFinder, SlateFinderWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UZdCeHUmsxq11UajsVVWoEjbaka0eIycAvFNA5oTZwPKS7YHJ5jVtstKtne/84C1",
  render_errors: [view: SlateFinderWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SlateFinder.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
