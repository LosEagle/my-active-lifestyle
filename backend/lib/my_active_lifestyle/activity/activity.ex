defmodule MyActiveLifestyle.Activity do
  use Ecto.Schema

  schema "activities" do
    field :title, :string
    field :rating, :string
    field :story, :string
    field :category_id, :integer
    field :goal_id, :integer
  end
end
