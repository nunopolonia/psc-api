defmodule ApiWeb.MembershipTest do
  use Api.DataCase

  alias Api.Competitions.Membership

  @valid_attrs %{user_id: Ecto.UUID.generate(), team_id: Ecto.UUID.generate()}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Membership.changeset(%Membership{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Membership.changeset(%Membership{}, @invalid_attrs)
    refute changeset.valid?
  end

  test "changeset with no attributes" do
    changeset = Membership.changeset(%Membership{})
    refute changeset.valid?
  end
end
