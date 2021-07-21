@alunos = []
opcao = 0

def cadastro
    system 'clear'
    aluno = {nome:'', cod_aluno:'', notas: []}
    puts "Por favor informe o nome do aluno:"
    aluno[:nome] = gets.strip.upcase
    puts "Por favor informe a matrícula:"
    aluno[:cod_aluno] = gets.to_i
    @alunos << aluno
end

def relatorio 
    system 'clear'
    puts "Qual a matrícula do aluno que deseja relatório:"
    matricula = gets.to_i
    @alunos.each do |a| 
        if a [:cod_aluno] == matricula
            system 'clear'
            if a [:notas] != []
                puts "Matricula: #{a[:cod_aluno]} \nNome: #{a[:nome]} \nNotas: #{a[:notas]}"
                puts "A média do aluno é: #{a[:notas].sum/a[:notas].length}"
            else
                puts "O aluno(a):\nNome: #{a[:nome]} \nMatrícula: #{a[:cod_aluno]} \nnão possui notas"
            end
                resposta = 'n'
            while resposta == 'n' do
                puts "Deseja retornar ao menu inicial? (s/n)"
                resposta = gets.strip
                
            end
        end
    end
end

def inserir_notas
    system 'clear'
    puts "Por favor insira a matricula do aluno:"
    matricula = gets.to_i
    localizado = false
    @alunos.each do |a| 
        if a [:cod_aluno] == matricula
            puts "Informe a nota a ser inserida:"
            a [:notas] << gets.to_f
            localizado = true
            break
        end
    end
    puts "Matrícula inexistente." unless localizado = true
    sleep (1)
end

def sair
    system 'clear'
    puts "Até breve!"
    sleep (2)
end

def menu
    system 'clear'
    puts "Informe a opçãp desejada: \n1 -Cadastrar novo aluno. \n2 -Relatorio. \n3 -Para inserir notas. \n4 -Alterar nome. \n5 -Sair."
    opcao = gets.to_i

    case opcao

        when 1 
            cadastro  
            menu 
        when 2
            relatorio
            menu  
        when 3
            inserir_notas
            menu
        when 4 
            alterar_nome
            menu
        when 5
            sair
    end
end

def alterar_nome
    system 'clear'
    puts "Por favor insira a matricula do aluno:"
    matricula = gets.to_i
    localizado = false
    @alunos.each do |a| 
        if a [:cod_aluno] == matricula
            puts "Informe o nome correto do(a) aluno(a):"
            nome = gets.to_s.strip
            a [:nome].replace(nome)
            localizado = true
            break
        end
    end
    puts "Matrícula inexistente." unless localizado = true
    sleep (1)
end

puts "Bom dia, negada!"
menu