require_relative 'player.rb'
require_relative 'question.rb'
require_relative 'game.rb'

game = Game.new(3)

player1 = Player.new(1, game.total_of_lives)
player2 = Player.new(2, game.total_of_lives)

players = [player1, player2]
winner_id = 0
lives_total = game.total_of_lives

while true
  for player in players
    question = Question.new
    question.generate_question(player.id)
    answer = Integer(gets.chomp)

    if question.correct_answer === answer 
      puts "Player YES! You are correct"
    else
      puts "Player #{player.id}: Seriously? No."
      player.number_of_lives_left -= 1
    end
    
    if player.number_of_lives_left === 0
      if player.id === 2
        winner_id = 1
      else
        winner_id = 2
      end
      winner_index = winner_id - 1

      puts "Player #{winner_id} wins with a score of #{players[winner_index].number_of_lives_left}/#{lives_total}"
      puts "----- GAME OVER -----"
      puts "Good bye!"
      return false
    else
      puts "P#{player1.id}: #{player1.number_of_lives_left}/#{lives_total} vs. P#{player2.id}: #{player2.number_of_lives_left}/#{lives_total}"
      puts "----- NEW TURN -----"
    end
  end
end