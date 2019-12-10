class SurveysController < AuthenticatedController
  
  def index
   
    @surveys = Survey.all
    
    @q = Question.select(:survey_question, :answer_category_id, :'surveys.survey_code', :'surveys.survey_desc',:'surveys.question_id',:'surveys.id').joins(:surveys)
  end


  def new
    @questions = Question.all
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
