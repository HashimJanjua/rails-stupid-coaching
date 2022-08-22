class QuestionsController < ApplicationController
  def home
  end

  def ask
  end

  def answer
    # Params is what follows  answer?  --- > question=hello?
    @question = params[:question]
    @answer = 'Go to work'

    if params[:question]
              .include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:question]
                .include? 'I am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
