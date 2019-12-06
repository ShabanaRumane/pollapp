class FeedbackController < ApplicationController
  def index
    
  end
  
  def new
    @questions = Question.join()
  end

  
end
