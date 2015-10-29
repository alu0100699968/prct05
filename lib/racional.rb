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

  def gcd(u, v)
    u, v = u.abs, v.abs
    while v > 0
      u, v = v, u % v
    end
    u
  end

  def simplificar
    gcdd = gcd(@num, @dem)
    if gcdd != 0
      otro_num = @num / gcdd
      otro_dem = @dem / gcdd
    end
    Racional.new(otro_num, otro_dem)
  end

end
