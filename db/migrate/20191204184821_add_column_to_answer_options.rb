class AddColumnToAnswerOptions < ActiveRecord::Migration[5.2]
  def change
    add_column :answer_options, :answer_category, :string
  end
end
