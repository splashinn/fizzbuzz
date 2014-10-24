def fizzbuzz(number)
	divisible_by_3 = number % 3 == 0
	divisible_by_5 = number % 5 == 0

	case 
	when divisible_by_3 && divisible_by_5
		puts "FizzBuzz!"
	when divisible_by_3
		puts "Fizz"
	when divisible_by_5
		puts "Buzz"
	else
		puts number
	end
end