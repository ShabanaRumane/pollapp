class AnswerCategory < ApplicationRecord
  validates :category, presence: true
  has_many :answer_option
  has_many :question
end
