class QuestionsController < AuthenticatedController
  def index
  end
  
  def new
    @question = Question.new
    @ans_cat = AnswerCategory.all
  end

  def get_answers(ans_category_id)
    @ans_for_category = AnswerOption.where(answer_category_id: ans_category_id)
  end
  helper_method :get_answers

  def import
    Question.my_import(params[:file])
    #my_import(params[:file],current_user.id)
    redirect_to root_url, notice: "Successfully Imported Questions Data!!!"
  end

end
