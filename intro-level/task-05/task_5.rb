# Primeira resolução
=begin
def shapeArea(n)
    if n == 1
      return n 
    end

    4*(n-1) + shapeArea(n-1)
end
=end

# Resolução após estudos
def shapeArea(n)
    n == 1 ? n : 4*(n-1) + shapeArea(n-1)
end