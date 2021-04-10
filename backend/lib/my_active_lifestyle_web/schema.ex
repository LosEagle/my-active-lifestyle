defmodule MyActiveLifestyleWeb.Schema do
  use Absinthe.Schema
  import_types(MyActiveLifestyleWeb.Schema.ContentTypes)

  alias MyActiveLifestyleWeb.Resolvers

  query do
    @desc "Get all categories"
    field :categories, list_of(:category) do
      resolve(&Resolvers.Category.list_categories/3)
    end

    @desc "Get all goals"
    field :goals, list_of(:goal) do
      resolve(&Resolvers.Goal.list_goals/3)
    end

    @desc "Get all activities"
    field :activities, list_of(:activity) do
      resolve(&Resolvers.Activity.list_activities/3)
    end
  end

  mutation do
    @desc "Create a category"
    field :create_category, type: :category do
      arg(:name, non_null(:string))

      resolve(&Resolvers.Category.create_category/3)
    end

    @desc "Delete a category"
    field :delete_category, type: :category do
      arg(:id, non_null(:id))

      resolve(&Resolvers.Category.delete_category/3)
    end

    @desc "Create a goal"
    field :create_goal, type: :goal do
      arg(:name, non_null(:string))
      arg(:category_id, non_null(:integer))

      resolve(&Resolvers.Goal.create_goal/3)
    end

    @desc "Delete a goal"
    field :delete_goal, type: :goal do
      arg(:id, non_null(:id))

      resolve(&Resolvers.Goal.delete_goal/3)
    end

    @desc "Create an activity"
    field :create_activity, type: :activity do
      arg(:title, non_null(:string))
      arg(:story, non_null(:string))
      arg(:rating, :string)
      arg(:category_id, non_null(:integer))
      arg(:goal_id, :integer)

      resolve(&Resolvers.Activity.create_activity/3)
    end

    @desc "Delete an activity"
    field :delete_activity, type: :activity do
      arg(:id, non_null(:id))

      resolve(&Resolvers.Activity.delete_activity/3)
    end
  end
end
