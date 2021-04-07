defmodule MyActiveLifestyleWeb.Schema do
  use Absinthe.Schema
  import_types(MyActiveLifestyleWeb.Schema.ContentTypes)

  alias MyActiveLifestyleWeb.Resolvers

  query do
    @desc "Get all categories"
    field :categories, list_of(:category) do
      resolve(&Resolvers.Category.list_categories/3)
    end
  end

  mutation do
    @desc "Create a category"
    field :create_category, type: :category do
      arg(:name, non_null(:string))

      resolve(&Resolvers.Category.create_category/3)
    end

    @desc "Remove a category"
    field :remove_category, type: :category do
      arg(:id, non_null(:id))

      resolve(&Resolvers.Category.remove_category/3)
    end
  end
end
