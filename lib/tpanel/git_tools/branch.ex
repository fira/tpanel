defmodule Tpanel.GitTools.Branch do
  use Ecto.Schema
  import Ecto.Changeset

  schema "branches" do
    field :description, :string
    field :name, :string
    field :refspec, :string
    field :remote, :string

    timestamps()
  end

  @doc false
  def changeset(branch, attrs) do
    branch
    |> cast(attrs, [:name, :description, :remote, :refspec])
    |> validate_required([:name, :description, :remote, :refspec])
  end
end