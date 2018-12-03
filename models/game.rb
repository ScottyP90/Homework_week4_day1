class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def result
    case(@hand1)
    when "rock"
      if (@hand2 == "scissors")
        return "Rock Wins!"
      else (@hand2 == "paper")
        return "Paper Wins!"
      end
    when "scissors"
      if (@hand2 == "rock")
        return "Rock wins!"
      else (@hand2 == 'paper')
        return "Scissors wins!"
      end
    when"paper"
      if (@hand2 == "scissors")
        return "Scissors wins!"
      else (@hand2 == "rock")
        return "Paper wins!"
      end
    else
      return "Draw"
    end
  end


end
