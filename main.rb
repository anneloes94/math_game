player1 = Player.new(1)
player2 = Player.new(2)

while player1.number_of_lives_left != 0 || player2.number_of_lives_left != 0 |do|
  Question.generate_question()
  if Question.is_correct_answer(gets.chomp)
    puts `Player YES! You are correct`
  else
    puts `Player #{Player.id}: Seriously? No.`
  end

  puts `P#{Player.id}: #{Player.number_of_lives_left}/#{Game.number_of_lives} vs. P#{Player.id}: #{Player.number_of_lives_left}`
  # how do we make this work?
end




