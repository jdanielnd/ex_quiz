defmodule ExQuiz.Core.Question.Service do
  alias ExQuiz.Core.Repo, as: DB
  
  import Ecto.Query
  
  def create(text, type) do
    question = %ExQuiz.Core.Question{text: text, type: type}
    question |> DB.insert()
  end

  def get(id) do
    DB.one(
      ExQuiz.Core.Question
      |> select([question], question)
      |> where([question], question.id == ^id)
    )
  end

  def get_all do
    DB.all(
      ExQuiz.Core.Question
      |> select([question], question)
      |> order_by(desc: :inserted_at)
    )
  end

  def update(id, question) do
    allowed_fields = [:text, :type]
  
    changes = Ecto.Changeset.cast(
      %ExQuiz.Core.Question{id: id}, question, allowed_fields
    )
  
    changes |> DB.update()
  end

  def delete(id) do
    %ExQuiz.Core.Question{id: id} |> DB.delete()
  end
 end
