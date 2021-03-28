defmodule ExQuiz.Repo do
  use Ecto.Repo, otp_app: :ex_quiz, adapter: Sqlite.Ecto2
end
