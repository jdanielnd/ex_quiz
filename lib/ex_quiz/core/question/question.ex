defmodule ExQuiz.Core.Question do
  use Ecto.Schema
  
  @derive {Poison.Encoder, except: [:__meta__]}
  
  schema "questions" do
    field(:text, :string)
    field(:type, :integer)
    timestamps()
  end
 end
