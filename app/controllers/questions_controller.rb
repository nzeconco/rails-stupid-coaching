class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @questions = params[:question]

    if @questions == 'I am going to work'
      @response = 'Great'
     elsif @questions.end_with?('?')
      @response = 'Silly question, get dressed and go to work!.'
     else
      @response = "I don't care, get dressed and go to work!"
     end
     @response
  end
end
