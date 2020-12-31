namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando banco de dados...") { %x(rails db:drop) }
      show_spinner("Criando banco de dados...") { %x(rails db:create) }
      show_spinner("Migrando banco de dados...") { %x(rails db:migrate) }
      show_spinner("Populando banco de dados...") { %x(rails db:seed) }
    else
      puts "Você não está em ambiente de desenvolvimento!"
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
