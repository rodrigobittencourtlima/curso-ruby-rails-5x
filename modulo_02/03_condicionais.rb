# IF
print "Informe um número: "
x = gets.chomp.to_i
if x > 2
    puts "x é maior do que 2!"
end

# UNLESS
print "Informe um número: "
x = gets.chomp.to_i
unless x >= 2
    puts "x é menor que 2!"
else
    puts "x é maior ou igual a 2!"
end

# CASE
puts "Informe a idade: "
idade = gets.chomp.to_i
case idade
when 0..10
    puts "É uma criança!"
when 11..17
    puts "É um adolescente!"
when 18..59 
        puts "É um adulto!"
else
        puts "É um idoso!"
end

# ESTRUTURA CONDICIONAL TERNÁRIA
sexo = "M"
sexo == "M" ? (puts "Masculino") : (puts "Feminino")