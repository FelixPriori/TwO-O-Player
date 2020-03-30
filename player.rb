class Player
  # contains information about the player, and actions they can take
  # instance variables: lives x3
  # methods: ask_question, answer_question, lose

  attr_accessor :points

  def intitialize(name)
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
    puts "#{@name} what does #{first} plus #{second} equal?"
    first + second
  end

  def answer_question(real_answer)
    answer = gets.chomp
    if answer = real_answer
      puts "YES! You are correct!"
      points += 1
    else
      puts "Seriously? No!"
    end
  end
end