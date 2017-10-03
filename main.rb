require_relative "mytest"
require_relative "results_print"

test1 = MyTest.new

puts "Начнем наш тест! Отвечайте только да (1), нет (2) или иногда (3)"

test1.question.each do |next_question|
  puts next_question
  test1.read_answer(STDIN.gets.chomp.downcase)
  test1.sum_score
end

puts "Ваш балл - #{test1.sum}"

test1.get_result

result1 = Conclusion.new
result1.show_conclusion(test1)
