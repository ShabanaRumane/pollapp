class FeedbacksController < ApplicationController
  def index
    @fb = Feedback.all
   
  end
  
  def new
    @fbquestions = Question.select(:survey_question, :answer_category_id, :'surveys.survey_code', :'surveys.question_id',:'surveys.id').joins(:surveys)

  end

  def create
    puts "Got params"
    puts params[:@customer_id]
    if (defined? params[:feedbacks])
      # puts "no feedbacks!!!!!!!!!!!"
      # redirect_to request.referrer, flash: {notice: "Successfully checked in"}
    else
        params[:feedbacks].keys.each do |newq|
        puts "Response to " + newq + " is " + params[:feedbacks][newq]["response"]
        @new_fb=Feedback.new({ :survey_id => newq, :answer_option_id => params[:feedbacks][newq]["response"],:customer_id => params[:@customer_id]})
        @new_fb.save
      end
      
    end
    redirect_to '/feedbacks'
  end

  def get_answer_options(ans_category_id)
    @ans = AnswerOption.where(answer_category_id: ans_category_id)
  end
  helper_method :get_answer_options

end
