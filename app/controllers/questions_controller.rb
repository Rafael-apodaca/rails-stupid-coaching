class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_message = params[:question]
    # Determine the coach's response based on the user's message
    if @user_message == "I am going to work"
      @coach_response = "Great!"
    elsif @user_message.nil?
      @coach_response = "What?"
    elsif @user_message[-1] =="?"
      @coach_response = "Silly question, get dressed and go to work!"
    else
      # You can add more conditions to handle different inputs
      @coach_response = "I don't care, get dressed and go to work!"
    end
  end
end





# params[:question]
# => "oie rafa"
