defmodule TechThursday.Inspection do
  use Ecto.Schema
  import Ecto.Changeset


  schema "inspections" do
    field :address, :string
    field :description, :string
    field :facility_id, :integer
    field :inspection_date, :date
    field :restaurant_name, :string
    field :score, :integer
    field :zip_code, :integer

    timestamps()
  end

  @doc false
  def changeset(inspection, attrs) do
    inspection
    |> cast(attrs, [:restaurant_name, :zip_code, :inspection_date, :score, :address, :facility_id, :description])
    |> validate_required([:restaurant_name, :zip_code, :inspection_date, :score, :address, :facility_id, :description])
  end
end
