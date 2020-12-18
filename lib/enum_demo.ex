defmodule EnumDemo do
  @moduledoc """
  Documentation for `EnumDemo`.
  """

  def create_task(params) do
    %EnumDemo.Task{}
    |> EnumDemo.Task.changeset(params)
    |> evaluate_changeset()
  end

  defp evaluate_changeset(%{valid?: false} = changeset), do: {:error, changeset}

  defp evaluate_changeset(changeset), do: {:ok, Ecto.Changeset.apply_changes(changeset)}
end
