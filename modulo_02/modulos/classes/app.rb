require_relative 'pagamento'

include Pagamento

visa = Pagamento::Visa.new
puts visa.pagando