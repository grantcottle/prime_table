require './lib/prime_table'

# describe 'prime_table' do 
#     it 'returns "prime" when passed 3' do 
#         expect(prime_table(3)).to eq 'prime'
#     end
# end

describe 'generate_prime_numbers' do
    it 'returns array of 10 consecutive primes' do
        expect(generate_prime_numbers(10)).to eq [2,3,5,7,11,13,17,19,23,29]
    end
end

describe 'generate_prime_numbers' do
    it 'returns array of 11 consecutive primes' do
        expect(generate_prime_numbers(11)).to eq [2,3,5,7,11,13,17,19,23,29,31]
    end
end

describe 'increment_prime' do
    it 'returns a the next prime numbers' do
        expect(increment_prime(2)).to eq 3
    end
end

describe 'is_prime?' do
    it 'returns a boolean to check prime numbers' do
        expect(is_prime?(0)).to eq false
    end
end

describe 'is_prime?' do
    it 'returns a boolean to check prime numbers' do
        expect(is_prime?(2)).to eq true
    end
end