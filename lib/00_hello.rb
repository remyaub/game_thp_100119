########## ASK NAME

def ask_first_name
    puts "What is your name ?"
    print ">"
    first_name = gets.chomp
end
def say_hello (first_name)
    puts "Bonjour #{first_name}"
end
def perform
    first_name = ask_first_name
    say_hello(first_name)
end

perform