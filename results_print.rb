require_relative "mytest"

class Conclusion
  attr_reader :results

  def initialize
    @results = []

    if File.exist?('./data/results.txt')
      File.new('./data/results.txt', 'r:UTF-8').each do |line|
        @results << line
      end
    else
      puts "file not found"
    end
  end

  def show_conclusion(mytest)
    puts "#{@results[mytest.result]}"
  end
end
