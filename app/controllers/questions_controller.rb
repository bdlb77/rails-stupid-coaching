class QuestionsController < ApplicationController
  def question
  @question = params[:response]
  end

  def answer
  	@question = params[:response]

  	if @question.blank?
  		@response = "try again."
  	elsif @question.include?("?")
  		@response =  "Silly question, get dreassed and go to work!"
  	elsif @question == "I am going to work"
  		@response =  "Great"
  	end


  end
end
