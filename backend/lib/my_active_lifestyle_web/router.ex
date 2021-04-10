defmodule MyActiveLifestyleWeb.Router do
  use Plug.Router

  plug(Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json, Absinthe.Plug.Parser],
    pass: ["*/*"],
    json_decoder: Jason
  )

  plug(:match)
  plug(:dispatch)

  forward("/api",
    to: Absinthe.Plug,
    init_opts: [schema: MyActiveLifestyleWeb.Schema]
  )

  forward("/graphiql",
    to: Absinthe.Plug.GraphiQL,
    init_opts: [
      schema: MyActiveLifestyleWeb.Schema,
      interface: :playground
    ]
  )
end
