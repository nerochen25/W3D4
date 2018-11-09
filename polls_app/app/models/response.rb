# == Schema Information
#
# Table name: responses
#
#  id               :bigint(8)        not null, primary key
#  user_id          :integer          not null
#  question_id      :integer          not null
#  answer_choice_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Response < ApplicationRecord
  
  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice
  
  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User
    
  has_one :question,
    through: :answer_choice, 
    source: :question
      
  def sibling_responses
    # response = self.question.responses.where('id != NULL', self.id)
    response = self.question.responses.where.not(id: self.id).pluck(:user_id)
    # response
    p 'hello'
  end
   
  # def not_duplicate_response 
  #   if user_id
  #     errors[:user_id] << "You already answered this question."
  #   end 
  # end 
end
