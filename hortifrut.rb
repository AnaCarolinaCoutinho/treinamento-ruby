
puts "Bem vindo ao Hortifrut!"
puts "Deseja comprar algo, sim ou não?"
resposta_cliente = gets.to_s.downcase.strip

# if resposta_cliente == 'sim'
#     puts "O que deseja comprar hoje?"
#     produto = gets
# else puts "Obrigado por visitar a nossa loja!"
# end

while resposta_cliente == 'sim' do 
puts "O que deseja comprar?"
produto = gets
puts "Deseja comprar mais alguma coisa, sim ou não?"
resposta_cliente = gets.to_s.downcase.strip
end

