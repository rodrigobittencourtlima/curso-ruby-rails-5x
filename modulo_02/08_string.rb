# Aspas simples ou duplas
s = 'String com aspas simples'
s1 = "String com aspas duplas"

puts s
puts s1
puts s.class
puts s1.class

# Concatenação

a = "Curso de "
b = "Rails"

puts a + b # 'a' permanece com valor a, e 'b' permanece com valor b
puts a << b # o valor de 'b' é jogado para o valor de 'a', modificando seu valor

# O '+' sempre gera um novo objeto quando utilizado. Isso gera desperdício de recurso
x = "curso"
puts x.object_id
x = x + "rails"
puts x
puts x.object_id
################
y = "curso de "
puts y.object_id
y << "rails"
puts y
puts y.object_id


# Interpolação de variáveis - só funciona para strings com aspas duplas, aí está a diferença
nome = "Jackson"
puts "Seu nome é #{nome}!"