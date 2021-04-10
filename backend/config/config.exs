import Config

config :my_active_lifestyle,
  ecto_repos: [MyActiveLifestyle.Repo]

config :my_active_lifestyle, MyActiveLifestyle.Repo,
  database: "priv/db/database.db"
