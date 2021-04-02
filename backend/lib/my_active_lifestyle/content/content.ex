defmodule MyActiveLifestyle.Content do
  def list_posts() do
    [
      %{
        id: 1,
        title: "hello",
        body: "world"
      },
      %{
        id: 2,
        title: "hello, this is",
        body: "my world"
      }
  ]
  end
end
