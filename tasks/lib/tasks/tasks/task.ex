defmodule Tasks.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset
  alias Tasks.Tasks.Task


  schema "tasks" do
    field :content, :string

    timestamps()
  end

  @doc false
  def changeset(%Task{} = task, attrs) do
    task
    |> cast(attrs, [:content])
    |> validate_required([:content])
  end
end
