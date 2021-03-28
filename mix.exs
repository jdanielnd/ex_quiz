defmodule ExQuiz.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_quiz,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :plug_cowboy, :sqlite_ecto2, :ecto],
      mod: {ExQuiz.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug_cowboy, "~> 2.0"},
      {:poison, "~> 3.1"},
      {:sqlite_ecto2, "~> 2.2"},
    ]
  end
end
