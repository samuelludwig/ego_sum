use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ego_sum, EgoSumWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :ego_sum, EgoSum.Repo,
  username: "postgres",
  password: "postgres",
  database: "ego_sum_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
