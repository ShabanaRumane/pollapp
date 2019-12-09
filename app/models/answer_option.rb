class AnswerOption < ApplicationRecord
  has_many :feedbacks
  belongs_to :answer_category
  has_many :surveys, through: :feedbacks
  has_many :questions, through: :surveys
end
