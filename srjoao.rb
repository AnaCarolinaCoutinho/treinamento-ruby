system 'clear'

puts "Olá! Por favor informe o valor total da compra:"
total_compra = gets.to_f

puts "Informe a porcentagem do desconto:"
porcentagem_desconto = gets.to_i

valor_desc = total_compra*porcentagem_desconto/100

valor_a_pagar = total_compra-valor_desc

puts "Total: R$ #{total_compra} "
puts "Percentual desconto: #{porcentagem_desconto}%"
puts "Desconto: R$ #{valor_desc} "
puts "À pagar: R$ #{valor_a_pagar} "