# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mychat,
  ecto_repos: [Mychat.Repo]

# Configures the endpoint
config :mychat, Mychat.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tnHHMfq7v17GGaPfOe3BO3D3/a0PkIi34zLioes05NN3uSEHR0KcbcETi1OH5ZAO",
  render_errors: [view: Mychat.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mychat.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
