# This method takes a string like `"4122226644"` and
# returns a properly formatted phone number.

def format_phone_number(phone_number_str)
	#Separate each character in the string and make each character an element in an Array
	separated_characters = phone_number_str.split(//)

	#iterate over each element in the Array of separated characters
	separated_characters.each do |element|
		#check if any of the elements are not numbers
		if element == "(" || element == ")" || element == " " || element == "-" || element == "."
			#delete the element if it isn't a number
			separated_characters.delete(element)
		end
	end
	#put all the numbers back into string form
	just_numbers = separated_characters.join
	#add a "(" at the beginning of the string
	just_numbers.insert(0, "(")
	#add a ")" after the first three numbers
	just_numbers.insert(4, ")")
	#add a space before the next three numbers
	just_numbers.insert(5, " ")
	#add a "-" after the second set of 3 numbers in the string
	just_numbers.insert(9, "-")
	#return the properly formatted number to the screen
	puts just_numbers
end

format_phone_number("1 23 123  55 5 5")
format_phone_number("8889382322")
format_phone_number("898-686-9900")
format_phone_number("123.123.5555")
format_phone_number("123 123-5555")