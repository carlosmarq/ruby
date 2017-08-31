def menu
  puts '#'*60
  puts '#'*60
  puts " 123 SIMPLE CALCULATOR ".rjust(40,'#') + '#'*20
  puts "WELCOME".rjust(32, '#') + '#'*28
  puts "_"*60
  puts "MENU"
  puts "1 Suma de dos números"
  puts "2 Suma de un arreglo de números"
  puts "3 Resta de dos números"
  puts "4 Suma de un arreglo de números"
  puts "5 Multiplicación de dos números"
  puts "6 Multiplicación de un arreglo de números"
  puts "7 División de dos números"
  puts "8 División de un arreglo de números"
  puts "9 Potencia de dos números"
  puts "10 Potencia de un arreglo de números"
  puts "0 Salir"
end

def operation_1
  puts "1 Suma de dos números"
  puts "Digite el primer operador"
  opt1 = gets.chomp
  puts "Digite el segundo operador"
  opt2 = gets.chomp

  opt1 = opt1.to_f if opt1 == "#{opt1.to_i}" or opt1 == "#{opt1.to_f}"
  opt2 = opt2.to_f if opt2 == "#{opt2.to_i}" or opt2 == "#{opt2.to_f}"

  unless opt1.class == Float and  opt2.class == Float
    puts "Los valores ingresados no son validos"
    puts  "Presione cualquier tecla para continuar"
    gets.chomp and system("clear") and return
  end
  puts  "El resultado de la operación #{opt1} + #{opt2} es: #{sum(opt1, opt2)}"
  puts  "Presione cualquier tecla para continuar"
  gets.chomp
  system "clear"
end




def sum(a, b)
  a + b
end

system "clear"
@input = nil

while @input !=0 do
  menu
  @input = gets.chomp.to_i
  system "clear"

  case @input
    when 1 then operation_1
    when 2 then puts "2 Suma de un arreglo de números"
    else puts "Opción in válida"
  end

end
