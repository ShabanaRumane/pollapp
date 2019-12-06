class AddColumnToSurveys < ActiveRecord::Migration[5.2]
  def change
    add_column :surveys, :survey_code, :string
    remove_column :surveys, :survey_type_id
  end
end
