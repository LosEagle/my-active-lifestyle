defmodule MyActiveLifestyleWeb.Resolvers.Category do
  def list_categories(_parent, _args, _resolution) do
    res = MyActiveLifestyle.Category
      |> MyActiveLifestyle.Repo.all

    {:ok, res}
  end

  def create_category(_parent, args, _resolution) do
    new_category = %MyActiveLifestyle.Category{name: args.name}

    MyActiveLifestyle.Repo.insert(new_category)
  end
end
