require('rspec')
require('palindromes')

describe('test') do
	it("Should be true") do
		expect(is_it_a_palindrome("A man, a plan, a canal, Panama")).to(eq(true))
	end	
	it("Should be false") do
		expect(is_it_a_palindrome("The quick brown fox jumped over the lazy dog")).to(eq(false))
	end
end