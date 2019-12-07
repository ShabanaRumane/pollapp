class AddReferences < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :answer_category, foreign_key: true
    add_reference :answer_options, :answer_category, foreign_key: true
  end
end
