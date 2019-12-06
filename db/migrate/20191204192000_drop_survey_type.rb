class DropSurveyType < ActiveRecord::Migration[5.2]
  def up
    drop_table :survey_types
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
