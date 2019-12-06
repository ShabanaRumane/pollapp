# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Question.delete_all
#Question.create!(survey_question: 'How did you find us?', answer_category: 'find us where')
#Question.create!(survey_question: 'Do you often shop online?', answer_category: 'Yes/No')  
#Question.create!(survey_question: 'Rate your experience from 1-5 with 5 being the best', answer_category: '1-5 - 5Best')  
#Question.create!(survey_question: 'How often do you shop online?', answer_category: 'how often')  

#AnswerOption.delete_all
#AnswerOption.create!(survey_answer_option: 'Facebook', answer_category: 'find us where')
#AnswerOption.create!(survey_answer_option: 'Google Search', answer_category: 'find us where')
#AnswerOption.create!(survey_answer_option: 'Word of Mouth', answer_category: 'find us where')
#AnswerOption.create!(survey_answer_option: 'Yes', answer_category: 'Yes/No')
#AnswerOption.create!(survey_answer_option: 'No', answer_category: 'Yes/No')
#AnswerOption.create!(survey_answer_option: '1', answer_category: '1-5 - 5Best')
#AnswerOption.create!(survey_answer_option: '2', answer_category: '1-5 - 5Best')
#AnswerOption.create!(survey_answer_option: '3', answer_category: '1-5 - 5Best')
#AnswerOption.create!(survey_answer_option: '4', answer_category: '1-5 - 5Best')
#AnswerOption.create!(survey_answer_option: '5', answer_category: '1-5 - 5Best')
#AnswerOption.create!(survey_answer_option: 'Extremely often', answer_category: 'how often')
#AnswerOption.create!(survey_answer_option: 'Moderately often', answer_category: 'how often')
#AnswerOption.create!(survey_answer_option: 'Slightly often', answer_category: 'how often')
#AnswerOption.create!(survey_answer_option: 'Not at all', answer_category: 'how often')
Survey.delete_all
Survey.create!(survey_code: 'C002', survey_desc: 'Year-end Survey', question_id: 13)
Survey.create!(survey_code: 'C002', survey_desc: 'Year-end Survey', question_id: 14)
Survey.create!(survey_code: 'C002', survey_desc: 'Year-end Survey', question_id: 15)
Survey.create!(survey_code: 'C002', survey_desc: 'Year-end Survey', question_id: 16)