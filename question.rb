class Question
  attr_reader :correct_answer, :number_one, :number_two
  attr_accessor :generate_question

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
    @correct_answer = @number_one + @number_two
  end

  def generate_question(player_id)
    # generate string of question
    puts "Player #{player_id}: What does #{self.number_one} plus #{self.number_two} equal?"
  end
end