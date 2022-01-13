class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @student_question = params[:answer]
    @coach_response = coach_response(@student_question)
  end

  def coach_response(message)
    if message == 'I am going to work'
      'Great!'
    elsif message.include? '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
