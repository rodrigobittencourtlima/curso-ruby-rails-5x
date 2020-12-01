class Pessoa

    def initialize(nome_fornecido = "indigente")
        @nome = nome_fornecido
    end
    
    def imprimir_nome
        @nome
    end
    
end

p = Pessoa.new
puts p.imprimir_nome

p1 = Pessoa.new("Rodrigo")
puts p1.imprimir_nome