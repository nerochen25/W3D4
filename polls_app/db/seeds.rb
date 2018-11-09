# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

nero = User.create!(username: "Nero")
nikki = User.create!(username: "IAMNIKKI")

nero_poll = Poll.create!(title: "Nero Poll", user_id: nero.id)
nikki_poll = Poll.create!(title: "This is Nikkiz Poll", user_id: nikki.id)

nero_question = Question.create!(text: "Why am I so stupid?", poll_id: nero_poll.id)
nikki_question = Question.create!(text: "Why am I so short?", poll_id: nikki_poll.id)

nero_answer1 = AnswerChoice.create!(text: "Did not drink enough milk :(", user_id: nero.id, question_id: nero_question.id)
nero_answer2 = AnswerChoice.create!(text: "Did not like studying", user_id: nero.id, question_id: nero_question.id)
nero_answer3 = AnswerChoice.create!(text: "Did not cheat", user_id: nero.id, question_id: nero_question.id)

nikki_answer1 = AnswerChoice.create!(text: "I blame my parents", user_id: nikki.id, question_id: nikki_question.id)
nikki_answer2 = AnswerChoice.create!(text: "Didn't drink enough chocolate milk", user_id: nikki.id, question_id: nikki_question.id)
nikki_answer3 = AnswerChoice.create!(text: "Iblamemyself.", user_id: nikki.id, question_id: nikki_question.id)

nero_response = Response.create!(user_id: nero.id, question_id: nikki_question.id, answer_choice_id: nikki_answer1.id)
nikki_response = Response.create!(user_id: nikki.id, question_id: nero_question.id, answer_choice_id: nero_answer3.id)