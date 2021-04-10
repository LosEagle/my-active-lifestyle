defmodule MyActiveLifestyleWeb.Schema.ContentTypes do
  use Absinthe.Schema.Notation

  object :category do
    field(:id, :id)
    field(:name, :string)
  end

  object :goal do
    field(:id, :id)
    field(:name, :string)
    field(:category_id, :integer)
  end

  object :activity do
    field(:id, :id)
    field(:title, :string)
    field(:rating, :string)
    field(:story, :string)
    field(:category_id, :integer)
    field(:goal_id, :integer)
  end
end
