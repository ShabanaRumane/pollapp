class Question < ApplicationRecord
  has_many :surveys
  belongs_to :answer_category
  has_many :feedbacks, through: :surveys
  has_many :answer_options, through: :feedbacks
end
