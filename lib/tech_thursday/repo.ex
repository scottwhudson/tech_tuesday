defmodule TechThursday.Repo do
  use Ecto.Repo,
    otp_app: :tech_thursday,
    adapter: Ecto.Adapters.Postgres
end
