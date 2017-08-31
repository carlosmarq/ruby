class Product              #clase
    #attr_reader :name, :price   #metodo interno que mapea simbolos con variables definidas en metodo initialize
    #attr_writer :price
    attr_accessor :name, :weight #:price

    #si quero inicializar el objeto con variables (implica ingresar TODOS los parametros)):
    #def initialize(name = 'NN', price = 0, weigth = 0)        #clase/metodo constructor
    #  @name = name
    #  @price = price
    #  @weigth = weigth
    #end

    #si quero inicializar el objeto con un hash (permite ingresar algunos parametros, xq un hash sin todos los parametros rellena con Null):
    def initialize(opts = {})        #clase/metodo constructor
      @name = opts[:name] ? opts[:name] : "NN" #Si opts[:name] = NULO, le aigna NN | if conciso: (cond) ? Codigo si verdadero : Codigo si falso
      @price = opts[:price]
      @weigth = opts[:weigth]
    end

    def price
      @price
    end

    #private  #De aqui para abajo es privado

    def price=(value) #es lo mismo que #attr_writer :price
      @price = value
    end

end

#product = Product.new     #instancia


product = Product.new({name: "potato", price: 300})
puts product
puts product.class
puts product.name
puts product.price
