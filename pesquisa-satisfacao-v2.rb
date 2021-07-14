# Danilo é fundador do Torne-se um Programador
# Ele precia calcular a satisfação de seus alunos 
# Faça um programa que calcule o NPS do seu negócio
#array
notas = []
#condição booleana para permanecer no programa em loop
programa_rodando = true

#enquanto o programa for verdadeiro faça
while programa_rodando do
  puts "Por favor, avalie nossos cursos com uma nota de 0 a 10:"
  nota = gets.to_f
  #programa passa a ser falso quando = a !(no
  programa_rodando = !(nota == 2021)
   if nota in (1..10) 
    notas << nota
    system "clear"
  elsif nota == 2021 
    if notas == []
      system 'clear'
      puts "Programa finalizado sem coleta de notas."
    else
      system 'clear'
      puts "Seu NPS é: #{notas.sum/notas.length}"
    end
  else
    puts "Esta nota é inválida!"
  end
   
end

