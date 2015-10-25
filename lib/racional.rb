class Racional
  attr_reader :num, :dem

  def initialize(num, dem)
    @num, @dem = num, dem
  end

  def to_s
    "(#{num}/#{dem})"
  end

  def +(otro)
    Racional.new((@num * otro.dem + @dem * otro.num), @dem * otro.dem)
  end

  def -(otro)
    Racional.new((@num * otro.dem - @dem * otro.num), @dem * otro.dem)
  end

  def *(otro)
    Racional.new(@num * otro.num, @dem * otro.dem)
  end

  def /(otro)
    Racional.new(@num * otro.dem, @dem * otro.num)
  end
end
