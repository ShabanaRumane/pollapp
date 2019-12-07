class Question < ApplicationRecord
  has_many :surveys
  belongs_to :answer_category
end
