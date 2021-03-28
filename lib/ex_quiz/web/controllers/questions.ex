defmodule ExQuiz.Web.Controllers.Questions do

  use Plug.Router

  plug(:match)
  plug(Plug.Parsers, parsers: [:json], json_decoder: Poison)
  plug(:dispatch)

  get "/v1/questions" do
    questions = ExQuiz.Core.Question.Service.get_all()
    render_json(conn, questions)
  end

  post "/v1/questions" do
    {:ok, question} = conn.body_params
    |> ExQuiz.Core.Question.Service.create()
    
    render_json(conn, question)
  end

  defp render_json(%{status: status} = conn, data) do
    body = Poison.encode!(data)
    send_resp(conn, (status || 200), body)
  end

end
