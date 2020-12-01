# WHILE

x = 0
while x < 5
    puts "O valor de x é: " + x.to_s
    x += 1
end

# EACH
(0..10).each do |i|
    puts "O valor lido foi: " + i.to_s
end