defmodule Cyanometer.Location do
  use Cyanometer.Web, :model

  schema "locations" do
    field :country, :string
    field :city, :string
    field :place, :string

    has_many :images, Cyanometer.Image

    timestamps
  end

  @required_fields ~w(country city place)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ %{}) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
