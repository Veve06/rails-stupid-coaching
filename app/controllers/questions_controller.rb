class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:answer]
    @answer = coach_answer_enhanced(@input)
end

def coach_answer(your_message)
  if your_message == "I am going to work right now!"
    return ""
  elsif your_message.end_with?("?")
    return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  if your_message == "I AM GOING TO WORK RIGHT NOW!"
    return ""
  elsif your_message.end_with?("?")
    return "I can feel your motivation! Silly question, get dressed and go to work!"
  else
    return "I can feel your motivation! I don't care, get dressed and go to work!"
  end
end

end




