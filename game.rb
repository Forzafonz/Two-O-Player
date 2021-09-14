class Game

  attr_accessor :player1, :player2, :current, :winner

  def initialize(player1, player2)
    self.player1 = player1
    self.player2 = player2
    self.current = self.pick_player()
    self.start_game()
  end

  def pick_player

    pick = rand(0..1)

    if pick == 0
      return self.player1
    end
    return self.player2

  end

  def new_turn
    if self.current == self.player1
      self.current = self.player2
      self.winner = self.player1
    else
      self.current = self.player1
      self.winner = self.player2
    end
    puts "----- NEW TURN -----"
  end


  def start_game
    self.new_turn
    Question.new(self.current)
    if self.current.lives == 0 
      puts "----- GAME OVER -----"
      puts "Player #{self.winner.name} won with a score of #{self.winner.lives}/3"
    else 
      puts "#{self.player1.name}: #{self.player1.lives}/3 vs #{self.player2.name}: #{self.player2.lives}/3"
      self.start_game()
    end
  end


end