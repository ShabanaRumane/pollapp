class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.references :survey, foreign_key: true
      t.references :answer_option, foreign_key: true
      t.integer :customer_id

      t.timestamps
    end
  end
end
