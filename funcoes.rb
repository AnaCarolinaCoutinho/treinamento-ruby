def menu
    puts "Escolha uma opção: \n1- Tabuada \n2- Mensagem \n3- Tabuada e mensagem \n4- Para sair"
    opcao = gets.to_i
    case opcao
    when  1
        tabuada
        menu
    when 2
        mensagem
        menu
    when 3
        mensagem
        tabuada
        menu
    else
        puts "Até breve!"
    end
end

def tabuada 
        puts "Informe o número na qual deseja ver a tabuada:"
        numero = gets.to_i
        num = 0
          while num>=0 && num<=10 do
          resultado = numero*num
          puts "#{numero}*#{num}= #{resultado}"
          num+=1
    end
end

def mensagem
    puts"Informe seu nome:"
    nome = gets.to_s.strip 
    puts "#{nome}, vamos lá guerreiros!"
end

menu