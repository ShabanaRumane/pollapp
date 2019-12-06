class CreateAnswerOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_options do |t|
      t.string :survey_answer_option

      t.timestamps
    end
  end
end
