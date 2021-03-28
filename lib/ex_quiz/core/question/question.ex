defmodule ExQuiz.Core.Question do
  use Ecto.Schema
  
  schema "questions" do
    field(:text, :string)
    field(:type, :integer)
    timestamps()
  end
 end
