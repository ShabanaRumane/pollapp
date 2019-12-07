class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :questions, :answer_category, :ans_category
    rename_column :answer_options, :answer_category, :ans_category
  end
end
