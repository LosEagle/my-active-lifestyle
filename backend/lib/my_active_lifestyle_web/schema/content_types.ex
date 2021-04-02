defmodule MyActiveLifestyleWeb.Schema.ContentTypes do
  use Absinthe.Schema.Notation

  object :category do
    field(:id, :id)
    field(:name, :string)
  end
end
