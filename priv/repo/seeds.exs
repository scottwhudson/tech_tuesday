# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     TechThursday.Repo.insert!(%TechThursday.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

defmodule TechThursday.Processor do
  def process({:ok, _foo}) do
    IO.puts "ok!"
  end

  def process({:error, _foo}) do
    IO.puts "Error!"
  end
end

file = File.stream!("./priv/repo/demo_data.csv") |> CSV.decode(headers: true)


Enum.each(file, fn(x) -> TechThursday.Processor.process(x) end)
