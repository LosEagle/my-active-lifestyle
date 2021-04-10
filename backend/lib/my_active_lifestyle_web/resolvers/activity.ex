defmodule MyActiveLifestyleWeb.Resolvers.Activity do
  def list_activities(_parent, _args, _resolution) do
    res = MyActiveLifestyle.Activity
      |> MyActiveLifestyle.Repo.all

    {:ok, res}
  end

  def create_activity(_parent, args, _resolution) do
    new_activity = %MyActiveLifestyle.Activity{
      title: args.title,
      story: args.story,
      rating: args.rating,
      category_id: args.category_id,
      goal_id: if is_map_key(args, :goal_id) do args.goal_id else nil end
    }

    MyActiveLifestyle.Repo.insert(new_activity)
  end

  def remove_activity(_parent, args, _resolution) do
    activity = MyActiveLifestyle.Repo.get(MyActiveLifestyle.Activity, args.id)

    MyActiveLifestyle.Repo.delete(activity)
  end
end
