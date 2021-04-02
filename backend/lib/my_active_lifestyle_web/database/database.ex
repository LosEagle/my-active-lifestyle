defmodule MyActiveLifestyleWeb.Database do
  def append(table, content) do
    basePath = "priv/db"

    categories = MyActiveLifestyleWeb.Database.get("category")
    updated_categories = Map.put_new(categories, 0, content)
    {_status, encoded_updated_categories} = Jason.encode(updated_categories)

    File.write("#{basePath}/#{table}.json", encoded_updated_categories)

    categories = MyActiveLifestyleWeb.Database.get("category")
    {_status, new_category} = Map.fetch(categories, "0")

    %{
      id: 0,
      name: new_category["name"]
    }
  end

  def get(table) do
    basePath = "priv/db"

    {_status, content} = File.read("#{basePath}/#{table}.json")
    {_status, content} = Jason.decode(content)

    content
  end
end
