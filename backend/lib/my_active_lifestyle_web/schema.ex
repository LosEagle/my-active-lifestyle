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

    @desc "Remove a category"
    field :remove_category, type: :category do
      arg(:id, non_null(:id))

      resolve(&Resolvers.Category.remove_category/3)
    end

    @desc "Create a goal"
    field :create_goal, type: :goal do
      arg(:name, non_null(:string))
      arg(:category_id, non_null(:integer))

      resolve(&Resolvers.Goal.create_goal/3)
    end

    @desc "Remove a goal"
    field :remove_goal, type: :goal do
      arg(:id, non_null(:id))

      resolve(&Resolvers.Goal.remove_goal/3)
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

    @desc "Remove an activity"
    field :remove_activity, type: :activity do
      arg(:id, non_null(:id))

      resolve(&Resolvers.Activity.remove_activity/3)
    end
  end
end
