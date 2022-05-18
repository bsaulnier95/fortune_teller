require 'byebug'
class FortuneTeller
 
@@colors = ["1. Red", "2. Blue","3. Organge","4. Green"]

@@money = {
    1 => "$100,0000",
    2 => "$500,000",
    3 => "$10,000",
    4 => "$100,000"
}



def start_reading
    ask_name
    ask_age
    ask_color
    
end

def ask_name
    puts "What is your name?"
    print ">"
    @name = gets.capitalize.chomp
end

def children_left
    kids = ["3", "1", "2","4","6", "10", "15", "12", "9", "17"]
    x = @name.length
    puts kids[x]
end

def ask_age
    puts "How old are you?"
    print ">"
    @age = gets.to_i
end

def death_age
    @death_age = @age.to_i + rand(1..60)
end



def ask_color
    puts "What is your favorite color? Please choose a number.\n"
    prompt = @@colors.each do |color|
        puts "#{color}"
    end
    prompt
    print ">"
    @fav_color = gets.to_i
end

def money_left
    x = @fav_color
    @money_left = @@money.each do |v, k|
        if 

=begin
def color_response
    print ">"
    @fav_color = gets.chomp.to_i

    @color_response = @@money.each do |k, v|
        if @fav_color.include?(k)
            return value
        else 
            print "Please enter valid response."
            print ">"
            @fav_color = gets.chomp.to_i
        end
    end
end
=end

end


FortuneTeller.new.start_reading

puts 
