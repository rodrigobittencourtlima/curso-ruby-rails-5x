require 'tty-spinner'
require 'lerolero_generator'
require 'documentos_br'

# Gem -> TTY Spinner
spinner = TTY::Spinner.new
spinner.auto_spin
sleep(2)
spinner.stop("Done!")

# Gem -> lerolero_generator
puts LeroleroGenerator.paragraph

# Gem -> documentos_br
puts "CPF: #{DocumentosBr.cpf_formatted}"
puts "CNPJ: #{DocumentosBr.cnpj_formatted}"
puts "Título de eleitor: #{DocumentosBr.titulo_eleitor_formatted}"