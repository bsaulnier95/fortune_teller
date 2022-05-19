class FortuneTeller
  COLORS = ['1. Red', '2. Blue', '3. Organge', '4. Green']

  MONEY = {
    1 => '$100,0000',
    2 => '$500,000',
    3 => '$10,000',
    4 => '$100,000'
  }
  attr_reader :name, :age, :color

  def reading
    ask_name
    ask_age
    ask_color
    print_fortune
  end

  # name determines children left
  def ask_name
    puts 'What is your first name?'
    print '>'
    @name = gets.capitalize.chomp
    print "You're going to die soon" and exit if @name == 'Jaime'
  end

  def children_left
    kids = %w[3 1 2 4 6 10 15 12 9 17 32 99 353]
    x = @name.length
    @children_left = kids[x]
  end

  # age determines age at death
  def ask_age
    puts 'How old are you?'
    print '>'
    @age = gets.to_i
  end

  def death_age
    @death_age ||= @age + rand(1..60)
  end

  # favorite color determines money left in bank
  def ask_color
    puts "What is your favorite color? Please choose a number.\n"
    sleep(1)
    puts COLORS.join("\n")

    loop do
      print '>'
      @color = gets.to_i
      break if color.between?(1, 4)

      puts 'Please enter a valid response'
    end
  end

  def money_left
    MONEY[color]
  end

  def print_fortune
    print "#{name}, you will die at #{death_age} leaving behind #{children_left} children with #{money_left} in the bank."
  end
end