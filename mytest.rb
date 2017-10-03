class MyTest
  attr_reader :question, :sum, :result

  def initialize
    @sum = 0
    @result = 0
    @question = []

    if File.exist?('./data/questions.txt')
      @question = File.new('./data/questions.txt', 'r:UTF-8')
    else
      puts "file not found"
    end
  end

  def read_answer(user_input)
    while (user_input != "1" and user_input != "2" and user_input != "3")
      puts "Введите ответ:  да (1), нет (2) или иногда (3)"
      user_input = STDIN.gets.chomp.downcase
    end
      @answer = user_input
  end

  def sum_score
    if @answer == "1"
      @sum +=2
    elsif @answer == "2"
      @sum +=0
    else
      @sum +=1
    end
  end

  def get_result
    case @sum
    when 30..32 then @result = 0
    when 25..29 then @result = 1
    when 19..24 then @result = 2
    when 14..18 then @result = 3
    when 9..13 then @result = 4
    when 4..8 then @result = 5
    else @result = 6
    end
  end
end
