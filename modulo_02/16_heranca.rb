class Pessoa
    attr_accessor :nome, :email
end

class PessoaFisica < Pessoa
    attr_accessor :cpf
    
    def falar(texto)
        texto
    end
end

class PessoaJuridica < Pessoa
    attr_accessor :cpnj
    
    def pagar_fornecedor
        "Fornecedor pago!"
    end
    
end


p1 = Pessoa.new
p1.nome = "Rodrigo"
p1.email = "rodrigo@teste.com"

p2 = PessoaFisica.new
p2.nome = "Jackson"
p2.email = "jackson@teste.com"
p2.cpf = "12345678"
puts p2.falar "Pessoa física falando!"

p3 = PessoaJuridica.new
p3.nome = "Bitt Software"
p3.email = "bittsoftware@teste.com"
p3.cpnj = "5258585458545/0001"
puts p3.pagar_fornecedor