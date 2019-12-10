class Question < ApplicationRecord
  has_many :surveys
  belongs_to :answer_category
  has_many :feedbacks, through: :surveys
  has_many :answer_options, through: :feedbacks

  require 'csv'

  def self.my_import(file)    
    CSV.foreach(file.path, headers:true) do |row|
      if row.length > 2 
        AnswerCategory.create({
          :category => row[1]})

        anscatid = AnswerCategory.where(category: row[1]).pluck(:id)
        puts anscatid
        Question.create({
          :survey_question => row[0],
          :answer_category_id => anscatid[0]
        })
        
        for i in 2..row.length-1 do
          AnswerOption.create({
            :survey_answer_option => row[i],
            :answer_category_id => anscatid[0]
          })
        end 

        
      end
    end
  end
end
