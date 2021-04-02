defmodule MyActiveLifestyle.Repo.Migrations.CreateCategory do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :name, :string
    end
  end
end
