#Sr. João é um comerciante e ele precisa que faça o cálculo
#da porcentagem de desconto que ele dará a seus clientes no valor total da compra
#faça um software que solicite o valor total do pedido
#solicite o valor da porcentagem e logo após mostre o valor com desconto e o valor descontado
#mudar o sistema para que ele pergunte qual produto o cliente vai comprar e o valor total 
#desse produto
#se o valor total descontado der inferior a 10, oferecer mais um produto
#perguntar o nome e o valor desse produto
#o desconto de x% será dado no valor final da compra

system 'clear' # limpar a tela

soma_prods = 0

puts "Por favor, informe o produto:"
prod1 = gets.to_s

puts "Por favor, informe o valor do produto:"
valor_prod1 = gets.to_f

puts "Informe a porcentagem do desconto:"
porcentagem_desconto = gets.to_i
valor_desc = soma_prods*porcentagem_desconto/100
a_pagar = valor_desc

#to_s converte em string
#upcase deixa tudo em letras maiusculas
#strip remove os espaços de antes, entre e depois

if valor_desc <10
    puts "Cliente, você quer incluir mais este item na suas compras? (S/N)"
    decisao_cliente = gets
    if decisao_cliente.to_s.upcase.strip == 'S'
        puts " Informe o item a ser adicionado:"
        prod2 = gets.to_s
        puts " Informe o valor do item adicionado:"
        valor_prod2 = gets.to_f
    end
    soma_prods = valor_prod1 + valor_prod2
    puts "Informe a porcentagem do desconto:"
    porcentagem_desconto = gets.to_i
    valor_desc = soma_prods*porcentagem_desconto/100
    a_pagar = soma_prods - valor_desc
end
puts "Itens adquiridos: "
puts "#{prod1} R$ #{valor_prod1}"
puts "#{prod2} R$ #{valor_prod2}"
puts "Valor total dos itens: #{soma_prods}"
puts "Percentual desconto: #{porcentagem_desconto}%"
puts "Desconto: R$ #{valor_desc} "
puts "À pagar: R$ #{a_pagar} "
puts "Nossa loja agradece sua preferência!"

