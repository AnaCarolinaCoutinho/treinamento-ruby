# dado que eu tenha algumas opções
# banana
# maçã
# laranja
# uva
# e digitar alguns dos itens listados acima
# ao escolher coloque um valor diferente para cada fruta, este valor estará no bloco selecionado
# no final do programa coloque o valor de acordo com a escolha da fruta

puts "Bem vindo! Qual fruta deseja levar hoje? Banana, maçã, laranja ou uva?"
fruta = gets.to_s.strip

case fruta
  when "banana"
    valor = 5.00
    puts " Você comprou #{fruta}"
    puts " O valor a pagar é R$ #{valor}"
  when "maça"
   valor = 7.00
   puts " Você comprou #{fruta}"
   puts " O valor a pagar é R$ #{valor}"
  when "laranja"
   valor = 6.00
   puts " Você comprou #{fruta}"
   puts " O valor a pagar é R$ #{valor}"
  when "uva"
   valor = 9.00 
   puts " Você comprou #{fruta}"
   puts " O valor a pagar é R$ #{valor}"
  else 
    puts "Lamento não termos a fruta que você deseja!"   
end

  