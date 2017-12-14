class Towers
  attr_reader :board
  def initialize
    @board = [[3, 2, 1], [], []]
  end

  def move(from, to)
    if @board[from].empty?
      raise "No disc in this tower!"
    end

    if @board[to].empty?
      @board[to] << @board[from].pop
    elsif @board[from].last > @board[to].last
      raise "Can't put bigger disc on smaller disc!"
    else
      @board[to] << @board[from].pop
    end
  end

  def won?
    @board[1..-1].any? { |tower| tower.length == 3 }
  end
  
end
