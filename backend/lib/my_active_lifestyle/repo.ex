defmodule MyActiveLifestyle.Repo do
  use Ecto.Repo,
    otp_app: :my_active_lifestyle,
    adapter: Ecto.Adapters.SQLite3
end
