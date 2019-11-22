# Write a method to determine a number's Collatz sequence
def collatz(number, length=1)
  if number == 1
    return length
  elsif number % 2 == 0
    number = number / 2
    length += 1
    collatz(number, length)
  else
    number = 3 * number + 1
    length += 1
    collatz(number, length)
  end
end
# Find the number (1 to 1,000,000) with the longest Collatz sequence
def sequence
  n = 1000000
  l = 1
  digit = 1
  n.times do |i|
    templ = collatz(i+1)
    if templ > l
      l = templ
      digit = i+1
    end
  end
  puts "The longest sequence was #{l} from number #{digit}"
end

sequence()