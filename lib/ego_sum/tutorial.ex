defmodule EgoSum.Tutorial do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tutorials" do
    field :body, :string
    field :published, :boolean, default: false
    field :slug, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(tutorial, attrs) do
    tutorial
    |> cast(attrs, [:slug, :title, :body, :published])
    |> validate_required([:slug, :title, :body, :published])
  end
end
