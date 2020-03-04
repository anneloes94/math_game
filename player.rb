class Player
  attr_reader :id, :number_of_lives_left
  
  def initialize(id, number_of_lives_left)
    @id = id
    @number_of_lives_left = number_of_lives_left
  end

  def number_of_lives_left=(n)
    @number_of_lives_left = n
  end
end
