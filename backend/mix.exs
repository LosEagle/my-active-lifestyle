defmodule MyActiveLifestyle.MixProject do
  use Mix.Project

  def project do
    [
      app: :my_active_lifestyle,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {MyActiveLifestyle.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:plug_cowboy, "~> 2.4"},
      {:jason, "~> 1.2"},
      {:absinthe_plug, "~> 1.5"},
      {:ecto_sqlite3, "~> 0.5.3"}
    ]
  end
end
