require "terminal-table"

def prime_table(total=10)
    prime_numbers = generate_prime_numbers(total)
    headings = prime_numbers.clone.unshift("")
    
    table = Terminal::Table.new :headings => headings, :title => "Generate #{total} prime numbers in a table" do |t|
        prime_numbers.length.times do |x|
            row = [prime_numbers[x]]

            prime_numbers.length.times do |y|
                row << prime_numbers[x] * prime_numbers[y]
            end

            t << row
            t << :separator unless x == (prime_numbers.length - 1 )
        end
    end
    table
end


# @return [Array]
def generate_prime_numbers(amount)
    prime_numbers = []
    prime_index = 0
    until prime_numbers.length == amount
        prime_index = increment_prime(prime_index)
        prime_numbers << prime_index
    end
    prime_numbers
end
# @return [Number]
def increment_prime(n)
    prime_number = n+1
    until is_prime? prime_number do
        prime_number +=1
    end
    return prime_number
end

# @return [Boolean]
def is_prime?(n)
    return false if n <= 1
    (2..Math.sqrt(n)).each do |x|
        return false if n % x == 0
    end
    return true
end

puts "Welcome to the Prime table Generator"
25.times { print "-" }
puts
puts "This program will print a multiplication table of prime numbers given a amount"
puts "4 attempts total"

attempts = 1
while attempts < 4
    print "Type number of prime numbers you want otherwise default is 10: "
    total = gets.chomp.to_i
    if total == 0
        table = prime_table()
    else
        table = prime_table(total)
    end
    puts table
    puts "Press n to quit or any other key to continue: "
    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1
end
puts "You have exceeded the number of attempts" if attempts = 4

