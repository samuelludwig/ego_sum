defmodule EgoSum.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :authors, :string
    field :body, :string
    field :published, :boolean, default: false
    field :references, :string
    field :slug, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :slug, :body, :authors, :references, :published])
    |> validate_required([:title, :slug, :body, :authors, :references, :published])
  end
end
