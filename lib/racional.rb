class Racional
  attr_reader :num, :dem

  def initialize(num, dem)
    @num, @dem = num, dem
  end

  def to_s
    "(#{num}/#{dem})"
  end

end
