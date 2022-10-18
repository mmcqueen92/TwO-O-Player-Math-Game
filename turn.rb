class Turn

attr_accessor :player

  def initialize(player)

    @player = player

  end

  def start_turn

    puts "-----NEW TURN-----"

    question = Question.new

    puts "#{@player.name}: #{question.question}"

    response = gets.chomp

    integer_response = response.to_i

    if integer_response == question.answer

      puts "#{@player.name}: CORRECT"

    else 

      puts "#{@player.name}: INCORRECT"

      @player.lose_life

    end

  end


end