# frozen_string_literal: true

class HomeController < AuthenticatedController
  def index
    #byebug
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @webhooks = ShopifyAPI::Webhook.find(:all)
    #byebug
    @orders = ShopifyAPI::Order.find(:all)
    @order_date = @orders.select{|order| I18n.l order.processed_at.to_time, format: "%m/%d/%Y" == '2019-11-28' }
    #@users = ShopifyAPI::User.find(:all)
    #@analytics = ShopifyAPI::Analytic.find(:all)

    @orders_qty = Hash.new(0)
    @orders.each do |order|
      order.line_items.each do |lineitem|
        puts "order# - #{order.order_number}"
        puts "Product id - #{lineitem.product_id}"
        puts "Quantity - #{lineitem.quantity}"
        @orders_qty[lineitem.product_id] += lineitem.quantity
      end
    end  
    #@chart = Feedback.joins(:answer_option, :survey)#.select(:survey_question, :survey_answer_option)
    # @chart = (
    #           (
    #             Survey.select(:'questions.survey_question',:id).joins(:question)
    #           ).
    #           select(:survey_question,:id,:'feedbacks.answer_option_id').joins(:feedback)
    #         ).select(:survey_question,:id,:answer_option_id,:'answer_options.survey_answer_option').joins(:answer_option)
    #@chart=Feedback.select(:'surveys.question_id', :survey_id, :answer_option_id).joins(:survey).
     #       select(:'questions.survey_question', :question_id, :survey_id, :answer_option_id ).joins(:question).
      #      select(:survey_question, :question_id, :survey_id, :answer_option_id, #:'answer_options.survey_answer_option').joins(:answer_options)
    #@chart=AnswerOption.select(:'feedbacks.answer_option_id', :'feedbacks.survey_id', :survey_answer_option).joins(:feedbacks).select(:'surveys.question_id', :'feedbacks.answer_option_id', :'feedbacks.survey_id', :survey_answer_question).joins(:surveys).select(:'questions.survey_question', :'surveys.question_id', :'feedbacks.answer_option_id', :'feedbacks.survey_id', :survey_answer_question).joins(:questions)     

    sql = "SELECT * FROM
            feedbacks fb,
            answer_options ao,
            surveys s,
            questions q
            WHERE fb.survey_id = s.id
            AND fb.answer_option_id = ao.id
            AND s.question_id = q.id" 
    
    #@chart = ActiveRecord::Base.connection.execute(sql)
    @sql_result=Feedback.connection.select_all(sql)

    #puts @sql_result.columns
    puts @sql_result.length
    @chart=Hash.new()
    # creates a hash @chart for the charts. @chart[question][[answer][answer count]] => hash[key,value=[key,value]]
    @sql_result.each do |row|
      puts row['survey_question'] + " " + row['survey_answer_option']
      if @chart.key?(row['survey_question'])
        @chart[row['survey_question']][row['survey_answer_option']]+=1
      else
        @chart[row['survey_question']]=Hash.new(0)
        @chart[row['survey_question']][row['survey_answer_question']]=1
      end
    end
    #@fbquestions = Question.joins(:surveys).select(:survey_question, :answer_category_id, :survey_code, :question_id,:id)
    # puts "List of questions:"
    # puts @chart.keys
    # @chart.keys.each do |q|
    #   puts q + ":" + @chart[q].keys.to_s
    #   @chart[q].except(nil).keys.each do |ans|
    #     puts "  " + ans.to_s + " = " + @chart[q][ans].to_s
    #   end
    # end
  end


end
