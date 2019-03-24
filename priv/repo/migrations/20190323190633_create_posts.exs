defmodule EgoSum.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :slug, :string
      add :body, :text
      add :authors, :text
      add :references, :text
      add :published, :boolean, default: false, null: false

      timestamps()
    end

  end
end
