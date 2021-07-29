require 'byebug'
@funcionarios = []

class Funcionario 
    attr_accessor :nome , :matricula, :cpf, :vacinado, :cargo
       
    def mostra 
        puts "Matricula: #{@matricula}"
        puts "Nome: #{@nome}"
        puts "Cpf: #{@cpf}"
        puts "Cargo: #{@cargo}"
        puts "Vacinado #{@vacinado}"
    end
end

def consulta_cpf
    puts "Informe o cpf:"
    cpf_consultado = gets.to_s.strip.chomp
    cpf_encontrado = false
    @funcionarios.each do |f|
        if f.cpf == cpf_consultado
            puts "Funcionário #{f.nome} cadastrado. Status de vacina: #{f.vacinado}"
            cpf_encontrado = true
            break
        end   
    end
    if cpf_encontrado == false 
        puts "Funcionário não cadastrado."
        puts "Deseja cadastrar? S/N"
        resposta = gets.to_s.downcase.strip.chomp
        if resposta == "s" 
            cadastrar(cpf_consultado)
        else resposta != "s" 
             menu
        end
    end
    sleep(3)
    menu
end


def menu
    system 'clear'
    puts "Escolha: \n1- cadastro. \n2- Relatório. \n3- Sair."
    escolha = gets.to_i
    case escolha
    when 1
        consulta_cpf
    when 2
        relatorio
    when 3
        puts "Até breve!"

    else 
        puts "Opção inválida!"
        menu
    end
end

def relatorio
    system 'clear'
    @funcionarios.each do |f|
        puts f.mostra
    end
    sleep(5)
    menu
end

def cadastrar(cpf)
    system 'clear'
    func1 = Funcionario.new
    func1.cpf = cpf
    puts "Informe o nome do funcionário"
    func1.nome = gets.to_s.strip 
    system 'clear'
    puts "Informe a matrícula:"
    func1.matricula = gets.to_s.strip 
    system 'clear'
    puts "Informe o cargo do funcionario"
    func1.cargo = gets.to_s.strip 
    system 'clear'
    puts"Vacinado?"
    func1.vacinado = gets.to_s.strip
    @funcionarios<<func1 
    menu
end

puts"---------------------------Bem vindo!-----------------------------------"
puts"------------------------------------------------------------------------"
menu






