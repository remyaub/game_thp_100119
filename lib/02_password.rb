def sign_up()
    puts"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    puts"                                  SIGN-UP                                   "
    puts"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    puts
    print "Choose a password >"
    password = gets.chomp
    return password
end
##############################

def login(password)
    puts"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    puts"                                  LOG-IN                                    "
    puts"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    puts
    print "Enter password >"

    password_enter = gets.chomp  
    case password_enter
        when password
    puts"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    puts"                      WELCOME TO THE NASA SECRET WEBSITE                    "
    puts"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
            welcome_screen
        else
    puts"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    puts"                               ERROR-404                                    "
    puts"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    login(password)
end

end
#############################

def welcome_screen
    puts
    puts "The United States Air Force facility commonly known as Area 51 is a highly classified remote detachment of Edwards Air Force Base, within the Nevada Test and Training Range"
end

def perform
    password = sign_up
    login (password)
end

perform