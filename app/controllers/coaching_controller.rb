class CoachingController < ApplicationController
  def answer
    @query = params[:query]
    @answer = coach_answer(@query)
    @ask_again = ask_again(@query)
  end

  def ask
  end

  private

  def coach_answer(query)
     if query == query.upcase
      answer_1 = "I can feel your motivation!"
    end
    if query.include?("?")
      answer_2 = " Silly question, get dressed and go to work!"
    elsif query == "I am going to work right now!"
      answer_2 = ' Good job'
    else
      answer_2 = " I don't care, get dressed and go to work!"
    end
    return answer= answer_1.to_s + answer_2
  end

  def ask_again(query)
    if query.downcase == "i am going to work right now!"
      return true
    else
      return false
    end
  end
end
