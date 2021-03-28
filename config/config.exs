use Mix.Config

config :ex_quiz, ExQuiz.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "ex_quiz_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"
