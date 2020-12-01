class Pessoa
    
    # método executado ao instanciar um objeto da classe
    def initialize(cont = 5)
        cont.times do |i|
            puts "Contando: #{i.to_s}..."
        end
        puts "Criando pessoa..."
    end
    
    # é possível informar um valor default para os parâmetros dos métodos
    def falar(texto = "pessoal")
        "Olá #{texto}!"
    end
    
    def talk(texto1 = "Olá!", texto2 = "Hello!")
        "#{texto1} - #{texto2}"
    end
end

p = Pessoa.new
puts p.falar("Rodrigo")
puts p.falar
puts p.talk
puts p.talk("Texto 1", "Texto 2")
p1 = Pessoa.new(3)