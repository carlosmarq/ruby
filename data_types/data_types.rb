@my_integer = 9
def get_my_integer
  @my_integer
end

def set_my_integer(other_integer)
  @my_integer = other_integer
end

def put_my_integer
  puts @my_integer
end

def class_of_my_integer
  @my_integer.class
end

puts "La variable original es  #{@my_integer}"
puts "La variable nueva es  #{set_my_integer(1153448)}"
puts " #{put_my_integer} Es el valor de la variable my_integer ahora"
puts "La CLASE de la variable my_integer es #{class_of_my_integer}"

#--------------


@my_string = "Soy un string"
def get_my_string
  @my_string
end

def set_my_string(other_string)
  @my_string = other_string
end

def put_my_string
  puts @my_string
end

def class_of_my_string
  @my_string.class
end

puts "La variable original es  #{@my_string}"
puts "La variable nueva es  #{set_my_string("soy un nuevo string")}"
puts " #{put_my_string} Es el valor de la variable @my_string ahora"
puts "La CLASE de la variable @my_string es #{class_of_my_string}"



#--------------


@my_boolean= 3.141516777777777777777
def get_my_xfloat
  @my_xfloat
end

def set_my_xfloat(other_xfloat)
  @my_xfloat = other_xfloat
end

def put_my_xfloat
  puts @my_xfloat
end

def class_of_my_xfloat
  @my_xfloat.class
end

puts "La variable original es  #{@my_xfloat}"
puts "La variable nueva es  #{set_my_xfloat(9.000084747)}"
puts " #{put_my_xfloat} Es el valor de la variable @my_xfloat ahora"
puts "La CLASE de la variable @my_xfloat es #{class_of_my_xfloat}"


#--------------


@my_true_boolean = true
def get_my_boolean
  @my_true_boolean
end

@my_false_boolean= true
def get_my_boolean
  @my_false_boolean
end

def set_my_boolean(other_boolean)
  @my_true_boolean= other_boolean
end

def put_my_boolean
  puts @my_true_boolean.to_s
end

def class_of_my_boolean
  @my_true_boolean.class
end

puts "La variable original es  #{@my_true_boolean}"
puts "La variable nueva es  #{set_my_boolean(false)}"
puts " #{put_my_boolean} Es el valor de la variable @my_booleanahora"
puts "La CLASE de la variable @my_booleanes #{class_of_my_boolean}"



#-------------- HASH

@my_hash = {"gloria" => 1000}
@my_hash_other = {"gloria": 1000}
@my_hash_sym_old = {:gloria => 1000}
@my_hash_sym_new = {gloria => 1000}  #recomendado!

# -------- nil


@my_nil= nil
def get_my_nil
  @my_nil
end

def set_my_boolean(other_boolean)
  @my_true_boolean= other_boolean
end

def put_my_boolean
  puts @my_true_boolean.to_s
end

def class_of_my_boolean
  @my_true_boolean.class
end
