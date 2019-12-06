class AddColumnsToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :answer_category, :string
  end
end
