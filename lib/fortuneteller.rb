class FortuneTeller
    
 
@@colors = ["1. Red", "2. Blue","3. Organge","4. Green"]

@@money = {
    1 => "$100,0000",
    2 => "$500,000",
    3 => "$10,000",
    4 => "$100,000"
}



def reading
    ask_name
    children_left
    ask_age
    death_age
    ask_color
    money_left
    fortune 
end


#name determines children left
def ask_name
    puts "What is your name?"
    print ">"
    @name = gets.capitalize.chomp
    if @name == "Jaime"
        print "You're going to die soon"
    exit
    end
end
def children_left
    kids = ["3", "1", "2","4","6", "10", "15", "12", "9", "17"]
    x = @name.length
    @children_left = kids[x]
end

#age determines age at death
def ask_age
    puts "How old are you?"
    print ">"
    @age = gets.to_i
end
def death_age
    @death_age = @age.to_i + rand(1..60)
end

#favorite color determines money left in bank
def ask_color
    puts "What is your favorite color? Please choose a number.\n"
    sleep(2)
    prompt = @@colors.each do |color|
        puts "#{color}"
    end

    loop do
        prompt
        print ">"
        @fav_color = gets.to_i
        if @fav_color < 1 || @fav_color >= 5 || @fav_color.nil?
            puts "Please enter a valid response"
        elsif @fav_color > 0 && @fav_color < 5
            break
        end
    end

end
def money_left
    x = @fav_color
    money_left = @@money.each do |v, k|
        if x == v
            @money_left = k
        end
    end
end



def fortune
   print "#{@name}, you will die at #{@death_age} leaving behind #{@children_left} children with #{@money_left} in the bank."
end

end



