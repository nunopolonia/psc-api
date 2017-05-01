defmodule Api.ProjectTest do
  use Api.ModelCase

  alias Api.Project

  @valid_attrs %{
    description: "some content",
    name: "some content",
    technologies: "some content"
  }
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Project.changeset(%Project{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Project.changeset(%Project{}, @invalid_attrs)
    refute changeset.valid?
  end
end
