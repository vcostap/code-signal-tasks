def reverseInParentheses(string)
	while string.match(/\(\w*\)/) do
		target = string.match(/\(\w*\)/).to_s
        replacement = target == '()' ? '' : target.match(/\w+/).to_s  
		string.gsub!(target, replacement.reverse)
	end

	string
end
