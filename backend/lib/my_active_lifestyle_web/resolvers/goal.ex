defmodule MyActiveLifestyleWeb.Resolvers.Goal do
  def list_goals(_parent, _args, _resolution) do
    res = MyActiveLifestyle.Goal
      |> MyActiveLifestyle.Repo.all

    {:ok, res}
  end

  def create_goal(_parent, args, _resolution) do
    new_goal = %MyActiveLifestyle.Goal{name: args.name, category_id: args.category_id}

    MyActiveLifestyle.Repo.insert(new_goal)
  end

  def remove_goal(_parent, args, _resolution) do
    goal = MyActiveLifestyle.Repo.get(MyActiveLifestyle.Goal, args.id)

    MyActiveLifestyle.Repo.delete(goal)
  end
end
