class Survey < ApplicationRecord
  belongs_to :question
  has_many :feedback
end
