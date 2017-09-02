defmodule Api.Category do
  @moduledoc """
    TODO: Write.
  """

  use Api.Web, :model

  @valid_attrs ~w(
    name
  )a

  @required_attrs ~w(
    name
  )a

  schema "categories" do
    field :name, :string
    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, @valid_attrs)
    |> validate_required(@required_attrs)
    |> unique_constraint(:name)
  end
end
