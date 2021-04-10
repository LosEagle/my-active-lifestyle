defmodule MyActiveLifestyle.Goal do
  use Ecto.Schema

  schema "goals" do
    field :name, :string
    field :category_id, :integer
  end
end
