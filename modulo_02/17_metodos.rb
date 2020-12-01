class Pessoa
    
    def self.gritar # método de classe
        "OLÁ PESSOAL!"
    end
    
    def falar # método de instância
        "Olá pessoal!"
    end

end

p1 = Pessoa.new
puts p1.falar
# puts Pessoa.falar - gera erro
puts Pessoa.gritar
# puts p1.gritar - gera erro