defmodule Api.TeamView do
  use Api.Web, :view

  alias Api.{TeamView, UserView}

  def render("index.json", %{teams: teams}) do
    %{data: render_many(teams, TeamView, "team.json")}
  end

  def render("show.json", %{team: team}) do
    %{data: render_one(team, TeamView, "team.json")}
  end

  def render("team.json", %{team: team}) do
    %{
      id: team.id,
      name: team.name,
      members: if team.users do render_many(team.users, UserView, "user_summary.json") end
    }
  end

  def render("team_summary.json", %{team: team}) do
    %{
      id: team.id,
      name: team.name
    }
  end
end
