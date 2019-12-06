class DropColumIndexFromSurveys < ActiveRecord::Migration[5.2]
  def change
    remove_index :surveys, name: "index_surveys_on_answer_option_id"
    remove_column :surveys, :answer_option_id, :survey_type_id
  end
end
