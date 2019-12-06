class DropIndexOnSurvey < ActiveRecord::Migration[5.2]
  def change
    remove_index :surveys, name: "index_surveys_on_survey_type_id"
  end
end
