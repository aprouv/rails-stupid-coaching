class QuestionsController < ApplicationController
  def ask; end

  def answer
    @answer = params[:question]
    if @answer[-1] == "?"
      @coachanswer = "Silly question, get dressed and go to work!"
    elsif @answer == "I am going to work"
      @coachanswer = "Great!"
    else
      @coachanswer = "I don't care, get dressed and go to work!"
    end
  end
end
