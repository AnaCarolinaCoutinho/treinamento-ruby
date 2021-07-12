# Danilo é fundador do Torne-se um Programador
# Ele precia calcular a satisfação de seus alunos 
# Faça um programa que calcule o NPS do seu negócio

notas = []
andamento = true 

while andamento do 
puts "Olá aluno! Qual sua nota de satisfação com nosso curso? (De 0 a 10)"
nota = gets.to_f
  if nota >= 0 &&  nota <= 10
    notas << nota  
  else puts "Nota inválida!" 
    end
andamento = (nota != 2021) 
end 

puts "Seu NPS é de: #{notas.sum/notas.length}"