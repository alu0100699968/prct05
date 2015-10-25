require 'lib/racional'
require 'test-unit' #Se utiliza la gema test-unit ya que las librerías de tests
                    #unitarios han sido eliminadas de la librería estándar de Ruby.

class TestRacional < Test::Unit::TestCase

  def setup
    @test1 = Racional.new(3,2)
  end

  def test_simple
    assert_equal("(3/2)", @test1.to_s)
  end

end
