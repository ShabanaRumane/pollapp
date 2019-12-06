class Feedback < ApplicationRecord
  belongs_to :survey
  belongs_to :answer_option
end
