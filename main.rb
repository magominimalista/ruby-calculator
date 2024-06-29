def menu
  puts "Calculadora Ruby"
  puts "Escolha uma operação:"
  puts "1. Adição"
  puts "2. Subtração"
  puts "3. Multiplicação"
  puts "4. Divisão"
  puts "5. Sair"
end

def obter_numeros
  print "Digite o primeiro número: "
  num1 = gets.chomp.to_f
  print "Digite o segundo número: "
  num2 = gets.chomp.to_f
  return num1, num2
end

loop do
  menu
  print "Opção: "
  opcao = gets.chomp.to_i

  case opcao
  when 1
    num1, num2 = obter_numeros
    resultado = num1 + num2
    puts "Resultado: #{num1} + #{num2} = #{resultado}"
  when 2
    num1, num2 = obter_numeros
    resultado = num1 - num2
    puts "Resultado: #{num1} - #{num2} = #{resultado}"
  when 3
    num1, num2 = obter_numeros
    resultado = num1 * num2
    puts "Resultado: #{num1} * #{num2} = #{resultado}"
  when 4
    num1, num2 = obter_numeros
    if num2 != 0
      resultado = num1 / num2
      puts "Resultado: #{num1} / #{num2} = #{resultado}"
    else
      puts "Erro: Divisão por zero!"
    end
  when 5
    puts "Saindo..."
    break
  else
    puts "Opção inválida. Tente novamente."
  end
  puts # Nova linha para melhor formatação
end
