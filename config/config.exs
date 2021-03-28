use Mix.Config

config :ex_quiz, ExQuiz.Repo,
  adapter: Sqlite.Ecto2,
  database: "ex_quiz.sqlite3"

config :ex_quiz, ecto_repos: [ExQuiz.Repo]
