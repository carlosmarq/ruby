$array = [1,2,3.5,3.55555555,"a","sdf",0,"x",-10,100]
$i = 0
$num = $array.count
sum=0
until $i > $num do
  puts($array[$i])
if $array[$i].to_f == 0 then puts "NO es un numero"
else sum =sum + $array[$i].to_f ; puts "SI es un numero" end
  $i +=1;
end
puts sum
