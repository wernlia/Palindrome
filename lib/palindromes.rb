def is_it_a_palindrome(phrase)
	test_phrase = phrase.gsub(/\p{^Alpha}/, '')
	test_phrase = test_phrase.downcase
	test_phrase = test_phrase.split(//)
	return_value = true
	if test_phrase.length.odd?
		while test_phrase.length > 1
			if test_phrase[0] != test_phrase[-1]
				return_value = false
			end
			test_phrase.delete_at(0)
			test_phrase.delete_at(-1)
		end
	else
		while test_phrase.empty? == false
			if test_phrase[0] != test_phrase[-1]
				return_value = false
			end
			test_phrase.delete_at(0)
			test_phrase.delete_at(-1)
		end
	end
	return_value
end
