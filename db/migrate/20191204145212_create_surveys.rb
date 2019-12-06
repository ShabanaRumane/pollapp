class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.references :answer_option, foreign_key: true
      t.references :question, foreign_key: true
      t.references :survey_type, foreign_key: true

      t.timestamps
    end
  end
end
