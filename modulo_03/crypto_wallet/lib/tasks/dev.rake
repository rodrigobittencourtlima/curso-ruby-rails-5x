namespace :dev do
  
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando banco de dados...") { %x(rails db:drop) }
      show_spinner("Criando banco de dados...") { %x(rails db:create) }
      show_spinner("Migrando banco de dados...") { %x(rails db:migrate) }
      %x(rails dev:add_mining_types)
      %x(rails dev:add_coins)
    else
      puts "Você não está em ambiente de desenvolvimento!"
    end
  end
  
  desc "Cadastra os tipos de mineração"
  task add_mining_types: :environment do
    show_spinner("Cadastrando tipos de mineração...") do
      mining_types = [
        {description: "Proof of Work", acronym: "PoW"},
        {description: "Proof of Stake", acronym: "PoS"},
        {description: "Proof of Capacity", acronym: "PoC"}
      ]
      
      mining_types.each do |mining_type|
        MiningType.find_or_create_by!(mining_type)
      end
    end
  end
  
  desc "Cadastra as moedas"
  task add_coins: :environment do
  
    show_spinner("Cadastrando moedas...") do
      
      coins = [
        { 
          description: "Bitcoin",    
          acronym: "BTC",
          url_image: "https://e7.pngegg.com/pngimages/261/204/png-clipart-bitcoin-bitcoin.png",
          mining_type: MiningType.find_by(acronym: 'PoW')
        },
        { 
          description: "Ethereum",    
          acronym: "ETH",
          url_image: "https://w7.pngwing.com/pngs/368/176/png-transparent-ethereum-cryptocurrency-blockchain-bitcoin-logo-bitcoin-angle-triangle-logo.png",
          mining_type: MiningType.all.sample
        },
        { 
          description: "Dash",    
          acronym: "DASH",
          url_image: "https://previews.123rf.com/images/rastudio/rastudio1712/rastudio171200776/91757391-golden-dash-coin-crypto-currency-blockchain-coin-dash-symbol-isolated-on-transparent-background-real.jpg",
          mining_type: MiningType.all.sample
        },
        {
          description: "Iota",
          acronym: "IOT",
          url_image: "https://img2.gratispng.com/20180712/tkc/kisspng-iota-cryptocurrency-logo-internet-of-things-tether-aren-5b481f06b57ae1.5360095415314531907434.jpg",
          mining_type: MiningType.all.sample
        },
        {
          description: "ZCash",
          acronym: "ZEC",
          url_image: "https://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/512/Zcash-ZEC-icon.png",
          mining_type: MiningType.all.sample
        }
      ]
  
      coins.each do |coin|
        Coin.find_or_create_by!(coin)
      end
    end
  end

  private
  
  def show_spinner(start_message, end_message = "Concluído!")
    spinner = TTY::Spinner.new("[:spinner] #{start_message}")
    spinner.auto_spin
    yield
    spinner.success(end_message)
  end

end
