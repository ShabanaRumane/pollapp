class AddColumnToSurvey < ActiveRecord::Migration[5.2]
  def change
    add_column :surveys, :survey_desc, :string 
  end
end
