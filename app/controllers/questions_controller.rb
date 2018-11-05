class QuestionsController < ApplicationController

  ANSWERS = [
  "Great!",
  "Silly question, get dressed and go to work!",
  "I don't care, get dressed and go to work!"
  ]

  def ask
  end

  def answer
    if params[:question] == "I am going to work"
      @answer = ANSWERS[0]
    elsif params[:question][-1] == "?"
      @answer = ANSWERS[1]
    else
      @answer = ANSWERS[2]
    end
  end
end
