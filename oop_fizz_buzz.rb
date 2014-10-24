class FizzBuzz
	include Enumerable

	def initialize(*transforms)
		@transforms = transforms
	end

	def each(values=1..Float::INFINITY)
		values.each do |value|
			words = @transforms.map { |transform| transform.transform(value) }
			yield words.any? ? words.join('') : value.to_s
		end
	end
end

class ModuloTransform
	def initialize(modulo, word)
		@modulo = modulo.to_i
		@word = word
	end

	def transform(number)
		(number % @modulo).zero? ? @word : nil
	end
end

class SquareRootTransform
	def initialize(word)
		@word = word
	end

	def transform(number)
		(Math.sqrt(number) % 1).zero? ? @word : nil
	end
end

fb = FizzBuzz.new(ModuloTransform.new(3, 'Fizz'),
	ModuloTransform.new(5, 'Buzz'))
# FizzBuzz naturally works from 1 to infinity.  This is one way to limit
# the results to the first 100.
fb.take(100).each { |word| puts word }

fb = FizzBuzz.new(SquareRootTransform.new('(PerfectSquare)'))
# This is another way to do FizzBuzz only for certain values.
fb.each(1..100) { |word| puts word }