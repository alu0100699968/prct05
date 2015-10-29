require 'lib/racional'
require 'test-unit' #Se utiliza la gema test-unit ya que las librerías de tests
                    #unitarios han sido eliminadas de la librería estándar de Ruby.

class TestRacional < Test::Unit::TestCase

  def setup
    @test1 = Racional.new(3,2)
    @test2 = Racional.new(2,5)
    @test3 = Racional.new(6,4)
  end

  def test_simple
    assert_equal("(3/2)", @test1.to_s)
  end

  def test_simplificar
    assert_equal("(3/2)", @test3.simplificar.to_s)
  end

  def test_operaciones
    assert_equal("(19/10)", (@test1 + @test2).to_s)
    assert_equal("(11/10)", (@test1 - @test2).to_s)
    assert_equal("(6/10)", (@test1 * @test2).to_s)
    assert_equal("(15/4)", (@test1 / @test2).to_s)
  end

end
