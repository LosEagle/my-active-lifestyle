defmodule MyActiveLifestyle.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    response = Jason.encode!(%{
      response: "welcome",
      status: "ok"
    })

    send_resp(conn, 200, response)
  end

  match _ do
    send_resp(conn, 404, "Oops!")
  end
end
