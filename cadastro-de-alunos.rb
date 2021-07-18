alunos = []
opcao = 0

while opcao != 4 do
    system 'clear'
    puts "Informe a opçãp desejada: \n1 -Cadastrar novo aluno. \n2 -Relatorio. \n3 -Para inserir notas. \n4 -Para sair."
    opcao = gets.to_i

    case opcao

        when 1 
            system 'clear'
            aluno = {nome:'', cod_aluno:'', notas: []}
            puts "Por favor informe o nome do aluno:"
            aluno[:nome] = gets.strip.upcase
            puts "Por favor informe a matrícula:"
            aluno[:cod_aluno] = gets.to_i
            alunos << aluno
        
        when 2
            system 'clear'
            puts "Qual a matrícula do aluno que deseja relatório:"
            matricula = gets.to_i
            alunos.each do |a| 
                if a [:cod_aluno] == matricula
                    system 'clear'
                    if a [:notas] != []
                        puts "Matricula: #{a[:cod_aluno]} \nNome: #{a[:nome]} \nNotas: #{a[:notas]}"
                        puts "A média do aluno é: #{a[:notas].sum/a[:notas].length}"
                    else
                        puts "Este aluno não possui notas."
                    end
                        resposta = 'n'
                    while resposta == 'n' do
                        system 'clear'
                        puts "Deseja retornar ao menu inicial? (s/n)"
                        resposta = gets.strip
                        
                    end
                end
            end

        when 3
            system 'clear'
            puts "Por favor insira a matricula do aluno:"
            matricula = gets.to_i
            localizado = false
            alunos.each do |a| 
                if a [:cod_aluno] == matricula
                    puts "Informe a nota a ser inserida:"
                    a [:notas] << gets.to_f
                    localizado = true
                    break
                end
            end
            puts "Matrícula inexistente." unless localizado = true
            sleep (1)

        when 4
            system 'clear'
            puts "Até breve!"
            sleep (2)
    end
end
