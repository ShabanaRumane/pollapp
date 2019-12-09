class Survey < ApplicationRecord
  belongs_to :question
  has_many :feedbacks
  has_many :answer_options, through: :feedbacks
end
