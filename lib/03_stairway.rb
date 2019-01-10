def game_start
    puts"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    puts"                             GAME START                                      "
    puts"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    return 1
end 

def dice_roll(sleep_time_in_sec = 0)
    puts"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    puts"                             DICE ROLL                                       "
    puts"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    puts
    puts "Throw..."
    sleep(sleep_time_in_sec)
    print "Your result -> "
    dice_result = 1 + Random.rand(6)
    puts dice_result
    return dice_result
end


def result_dice_roll(dice_result, step_number)
    case dice_result
    when 5,6
            puts
            puts"Tu avance d'une marche..."
            puts
            step_number += 1
    when 1
            puts
            puts"Tu descends d'une marche"
            puts
            step_number -= 1 if (step_number >= 1)
    when 2,3,4
            puts
            puts"Rien..."
            puts
    end
    puts "Marche actuelle -> #{step_number}"
    puts
    return step_number 
end

def game(dice_roll_duration_in_sec = 0)
    step_number = game_start()
    while step_number < 10
        dice_result = dice_roll(dice_roll_duration_in_sec)
        step_number = result_dice_roll(dice_result,step_number)
    end
    puts"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    puts"                         ***    NICE ONE :) ***                              "
    puts"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    puts
end

def average_finish_time
    t1 = Time.now
    100.times {game}
    t2 = Time.now
    average_finish_duration = (t2 - t1) / 100
    puts"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    puts"                            30 GAMES AT ONCE                                 "
    puts"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    puts
    puts"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    puts"                AVERAGE FINISH TIME : #{average_finish_duration}                 "
    puts"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
end


def perform
   average_finish_time
end

perform