class Question
  attr_reader :answer, :number_one, :number_two

  def numbers
    # randomize two numbers
    @number_one = 1 + Random.rand(20)
    @number_two = 1 + Random.rand(20)
  end

  def answer
    # generate answer
    @addition = self.number_one + self.number_two
  end

  def generate_question(self.number_one, self.number_two, Player.id)
    # generate string of question
    puts `Player #{Player.id}: What does #{self.number_one} plus #{self.number_two} equal?`
  end

  def is_correct_answer(user_input)
    self.addition === user_input
  end
end