class SurveysController < ApplicationController
  
  def index
    @questions = Question.all
    @answers = AnswerOption.all
    @surveys = Survey.all
    @aq = AnswerCategory.all
  end


  def new
    @surveys = Survey.new
  end

  def create
    params[:survey][:question_id].each do |newq|
      new_survey={:survey_code => params[:survey][:survey_code],
                  :survey_desc => params[:survey][:survey_desc],
                  :question_id => newq}
      #@survey = Survey.new(survey_params(newq))
      @survey=Survey.new(new_survey)
      @survey.save
    end
    redirect_to '/surveys'
  end

  private
  def survey_params
    params.require(:survey).permit(:survey_code, :survey_desc, :question_id)
  end
end
