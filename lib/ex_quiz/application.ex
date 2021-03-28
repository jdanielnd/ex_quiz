defmodule ExQuiz.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Starts a worker by calling: ExQuiz.Worker.start_link(arg)
      # {ExQuiz.Worker, arg}
      Plug.Cowboy.child_spec(
        scheme: :http,
        plug: ExQuiz.Web.Endpoint,
        options: [port: 4001]
      ),
      ExQuiz.Repo
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ExQuiz.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
