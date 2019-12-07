class AnswerOption < ApplicationRecord
  has_many :feedback
  belongs_to :answer_category
end
