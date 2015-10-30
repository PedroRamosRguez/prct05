class Fraccion
  attr_reader :num, :denom
  		#constructor de la clase fraccion 
#================================================================================================
    def initialize(num, denom)
      raise TypeError, "El denominador no puede ser igual a cero" if denom.eql? 0
      x=MCD(num,denom)
      @num = num / x
      @denom =  denom / x
    end  
#================================================================================================
    def MCD(u,v)

      u,v = u.abs,v.abs
      while v > 0
        u,v=v,u % v
      	
      end
      u
      
    end
#================================================================================================

     def mcm(u,v)
       x = u / MCD(u,v) * v
     end
  
#================================================================================================


 #Metodo para crear un numero fraccionario con numerador negativo(para realizar la resta de fracciones).
 
  def -@
    Fraccion.new(@num * (-1), @denom)
  end
  #metodo que crear el numero reciproco es decir (denominador/numerador), para realizar división de fracciones
 
  def reciproco
    Fraccion.new(@denom, @num)
  end

#================================================================================================

 #suma

  def +(numero)

    minimo = mcm(@denom, numero.denom)
    numero_a = @num * minimo / @denom 
    numero_b = numero.num * minimo / numero.denom 
    Fraccion.new( numero_a + numero_b, minimo)

  end

#resta

  def -(numero)

    self + (-numero) 

  end

# producto.

  def *(numero)

    Fraccion.new( @num * numero.num, @denom * numero.denom)

  end

#Division [muliplicandose el mismo por el reciproco(denom/num)]

  def /(numero)

    self * numero.reciproco
    
  end
#================================================================================================

end
