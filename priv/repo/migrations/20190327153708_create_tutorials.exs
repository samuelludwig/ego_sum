defmodule EgoSum.Repo.Migrations.CreateTutorials do
  use Ecto.Migration

  def change do
    create table(:tutorials) do
      add :slug, :string
      add :title, :string
      add :body, :text
      add :published, :boolean, default: false, null: false

      timestamps()
    end

  end
end
