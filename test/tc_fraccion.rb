require("./lib/Fraccion.rb")
require 'test/unit'
class TestPoint < Test::Unit::TestCase
  def setup
    @frac1 = Fraccion.new(1,2)
    @frac2 = Fraccion.new(1.2,1.1)
  end
#test simple de creacion de objetos racionales
  def test_simple
    assert(@frac1,"correcto")
    assert(@frac2,"correcto")
  end  
 
  def test_type_check
      assert_raise(TypeError){Fraccion.new(2,0)}
    end

=begin
			#test fallido y salta la excepción de que el denominador no puede ser igual a cero.
   def test_failure
    assert(Fraccion.new(1,0),"Incorrecto")
   end
=end
end
