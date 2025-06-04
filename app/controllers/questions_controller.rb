class QuestionsController < ApplicationController
  def ask
    # la view est déjà affichée
  end

  def answer
    user_question = params[:question] # recupere la question envoyée depuis le form
    puts "question envoyee par user: #{user_question}" # debug pour afficher la question reçue dans rails

    # logique de reponse du coach
    if user_question == 'I am going to work'
      @answer = 'Great!'
    elsif user_question&.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
