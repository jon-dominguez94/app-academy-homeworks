class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep(1)
      puts %x{clear}
      sleep(0.25)
    end
  end

  def require_sequence
    puts "Repeat the sequence by typing the first letter or each color then pressing enter. (r,b,g,y)"
    @seq.each do |color|
      ans = gets.chomp
      unless ans == color[0]
        @game_over = true
        break
      end
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    "You got it!"
  end

  def game_over_message
    puts "Game Over! Score: #{@sequence_length - 1}"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
