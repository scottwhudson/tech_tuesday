use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :tech_thursday, TechThursdayWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :tech_thursday, TechThursday.Repo,
  username: "postgres",
  password: "postgres",
  database: "tech_thursday_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
