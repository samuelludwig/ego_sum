defmodule EgoSum.Repo.Migrations.CreateProjects do
  use Ecto.Migration

  def change do
    create table(:projects) do
      add :title, :text
      add :description, :text
      add :link, :text

      timestamps()
    end

  end
end
