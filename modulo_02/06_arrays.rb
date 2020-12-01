# Vetores dinâmicos, funcionando com pilha de dados, aceita multitipagem

a1 = [1, 2, 10, "teste"]
a1.each do |item|
    puts item.to_s
end


a2 = Array.new # ou a2 = []
a2.push(1)
a2.push("teste")
a2.each do |item|
    puts item.to_s
end


# Acessar posição do array / vetor
puts a1[3]

# Strings são vetores
s = "Rodrigo"
puts s[2]


# É possível aninhar arrays
a3 = [[1,2,3], [4,5,6], [7,8,9]]
a3.each do |externo|
    externo.each do |interno|
        puts interno.to_s
    end
end