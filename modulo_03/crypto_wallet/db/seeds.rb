# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cadastrando as moedas..."

Coin.create!(
    description: "Bitcoin",    
    acronym: "BTC",
    url_image: "https://e7.pngegg.com/pngimages/261/204/png-clipart-bitcoin-bitcoin.png"
)

Coin.create!(
    description: "Ethereum",    
    acronym: "ETH",
    url_image: "https://w7.pngwing.com/pngs/368/176/png-transparent-ethereum-cryptocurrency-blockchain-bitcoin-logo-bitcoin-angle-triangle-logo.png"
)

Coin.create!(
    description: "Dash",    
    acronym: "DASH",
    url_image: "https://previews.123rf.com/images/rastudio/rastudio1712/rastudio171200776/91757391-golden-dash-coin-crypto-currency-blockchain-coin-dash-symbol-isolated-on-transparent-background-real.jpg"
)

puts "Moedas cadastradas com sucesso!"