require "terminal-table"

def prime_table(total)
    prime_numbers = generate_prime_numbers(total)
    headings = prime_numbers.clone.unshift()


end

# @return [Array]
def generate_prime_numbers(amount=10)
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

p prime_table