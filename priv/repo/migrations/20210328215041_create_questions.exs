defmodule ExQuiz.Core.Repo.Migrations.CreateQuestions do
  use Ecto.Migration

  def change do
    create table(:questions) do
      add(:text, :string)
      add(:type, :integer)
      timestamps()
    end
  end
end
