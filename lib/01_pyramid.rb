########## HALF PYRAMID

def half_pyramid
puts " Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print " > "

userFloor = gets.to_i
v = 0
diez = "#"
space = " "
if userFloor <= 25
	puts "Let's go bro"
	loop do
		break if v == userFloor
		(userFloor - 1 - v).times do
		print space

		
	end
		puts diez
		diez += "#"	
		v += 1
	end
else 
	puts "Take it easy bro..."
end
end

half_pyramid

########## FULL PYRAMID

def full_pyramid
    puts " Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print " > "

    userFloor = gets.to_i
    v = 1
    loop do
		break if v > userFloor
		(userFloor - v).times do
			print " "
		end
		(v * 2 - 1).times do
			print "#"	
	    end
		puts		
		v += 1
    end
end

full_pyramid


