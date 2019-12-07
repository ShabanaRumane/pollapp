class AnswerCategory < ApplicationRecord
  has_many :answer_option
  has_many :question
end
