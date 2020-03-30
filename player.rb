class Player
  
  # contains information about the player, and actions they can take
  # instance variables: lives x3
  # methods: ask_question, answer_question, win
  
  attr_reader :name
  attr_accessor :points
  
  def initialize(name)
    @name = name
    @points = 0
  end

  def ask_question
    puts "#{@name} please enter a first number"
    first = gets.chomp
    puts "#{@name} you chose #{first}" 
    puts "#{@name} please enter a second number"
    second = gets.chomp
    puts "#{@name} you chose #{second}"
    puts "Question: what does #{first} plus #{second} equal?"
    first.to_i + second.to_i
  end

  def answer_question(real_answer)
    answer = gets.chomp
    if answer.to_i == real_answer
      puts "YES! You are correct!"
      @points += 1
    else
      puts "Seriously? No!"
    end
  end

  def win?
    @points == 3
  end

end