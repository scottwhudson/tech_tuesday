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
  alias TechThursday.{Repo, Inspection}
  require IEx

  def process({:ok, row}) do
    Repo.insert(
      %Inspection{
        address: row["Address"],
        facility_id: String.to_integer(row["Facility ID"]),
        inspection_date: parse_date(row["Inspection Date"]),
        description: row["Process Description"],
        restaurant_name: row["Restaurant Name"],
        score: row["Score"],
        zip_code: row["Zip Code"]
      }
    )
  end

  def process({:error, _foo}) do
    IO.puts "Error!"
  end

  def parse_date(string) do
    IEx.pry
    m, d, y = String.split(string)
    Date.new(String.to_integer(y), String.to_integer(m), String.to_integer(d))
  end
end


file = File.stream!("./priv/repo/demo_data.csv")
  |> CSV.decode(headers: true)




Enum.each(file, fn(x) -> TechThursday.Processor.process(x) end)
