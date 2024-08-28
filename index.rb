#input a string
#return a new string where the string input characters will be substituted with another letter with the fixed number of positions down the alphabet
#ceasar cipher => "Hello there",5
#return "Miqqt ymiwr"
#which means each character in the string is substituted with another letter down from the alphabet by the number given

#use gets method to be to input a String
#use gets result as argument for the main method
#convert each character of the string with their numeric position in the alphabet
#after converting each character, add the given number to each of the numeric number
#convert it into string again after adding the given number to each of the numeric number
#return the final conversion as final result

def ceasar_cipher(text, num)

  letter_to_number = ("a".."z").zip(1..26).to_h
  to_num = text.downcase.each_char.map {|c| letter_to_number[c]}.compact
  add_num_to_num = to_num.map {|res| res + num}
  result = add_num_to_num.map {|c| letter_to_number.key(c)}.join(" ")
  p result
end

string = gets.chomp
digit = gets.chomp.to_i
ceasar_cipher(string, digit)

