defmodule TechThursday.Repo.Migrations.CreateInspections do
  use Ecto.Migration

  def change do
    create table(:inspections) do
      add :restaurant_name, :string
      add :zip_code, :integer
      add :inspection_date, :date
      add :score, :integer
      add :address, :string
      add :facility_id, :integer
      add :description, :string

      timestamps()
    end

  end
end
