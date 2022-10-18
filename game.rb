class Game

  def initialize

    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")

  end

  def play_game

    puts "-----NEW GAME-----"

    while @player1.lives > 0 && @player2.lives > 0

      if @player1.lives > 0 && @player2.lives > 0

        turn = Turn.new(@player1)
        turn.start_turn
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"

      end

      if @player1.lives > 0 && @player2.lives > 0

        turn = Turn.new(@player2)
        turn.start_turn
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"

      end

    end

    @player1.lives > 0 ? (puts "Player 2 eliminated! Player 1 wins with a score of #{@player1.lives}/3") : (puts "Player 1 eliminated! Player 2 wins with a score of #{@player2.lives}/3")

    puts "-----GAME OVER-----"
    puts "Goodbye!"

  end

end