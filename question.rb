class Question
  attr_reader :answer, :number_one, :number_two
  attr_writer :generate_question

  def initialize()
    numbers
    answer
  end

  def numbers
    # randomize two numbers
    @number_one = 1 + Random.rand(20)
    @number_two = 1 + Random.rand(20)
  end

  def answer
    # generate answer
    @addition = @number_one + @number_two
  end

  def generate_question(player_id)
    # generate string of question
    puts "Player #{player_id}: What does #{self.number_one} plus #{self.number_two} equal?"
  end

  def is_correct_answer(user_input)
    @addition === user_input
  end
end

question1 = Question.new()