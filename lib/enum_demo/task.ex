defmodule EnumDemo.Task do
  use Ecto.Schema
  import Ecto.Changeset

  embedded_schema do
    field :name, :string
    field :status, Ecto.Enum, values: [:ready, :cancelled, :done]
  end

  def changeset(task, attrs) do
    task
    |> cast(attrs, [:name, :status])
    |> validate_required([:name, :status])
  end
end