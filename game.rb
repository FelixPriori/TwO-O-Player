require_relative './player'

class Game
  # contains the logic pertaining to the game: stop condition, display information to players, calculates points, goes to next round
  # instance variables: players, round
  # methods: game_over?, play, next_round, display_winner, get_question, get_answer, display_round_status

  def initialize
    @player1 = Player.new("Chicken")
    @player2 = Player.new("Bob")
    @round = 1
  end

  def display_round_status
    puts "------------------------"
    puts "       Round ##{@round}"
    puts "------------------------"
    puts "#{@player1.name}: #{@player1.points}/3 vs #{@player2.name}: #{@player2.points}/3"
  end

  def game_over?
    @player1.win? || @player2.win?
  end

  def display_winner
    puts "------------------------"
    puts "       GAME OVER"
    puts "------------------------"
    if @player1.win?
      puts "#{@player1.name} wins!"
    else
      puts "#{@player2.name} wins!"
    end
    puts "Good bye!"
  end

  def play
    players = [@player1, @player2].shuffle
    until(game_over?) do
      display_round_status
      real_answer = players.first.ask_question
      players.last.answer_question(real_answer)
      @round += 1
      players.rotate!
    end
    display_winner
  end

end