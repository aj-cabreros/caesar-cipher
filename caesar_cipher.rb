#char value is an acsii integer representation

def caesar_cipher(string, shift_factor)

  original_string = string
  new_string = ""

  string.each_byte do |char|
  
=begin
    #Verify string is only letters and spaces
    if ( char != 32 && !(char >= 65 && char <= 90) && !(char >= 97 && char <= 122) )
      puts "All characters must be whitespace or part of english alphabet"
      return
    end
=end

    #Upper case shift
    if (char >= 65 && char <= 90) 

      char += (shift_factor % 26) #Ensures shift < 26 to avoid repeating alphabet
      if char > 90
        char = 65 + (char - 91) #Wraps from Z to A
      end

    end

    #Lower case shift
    if (char >= 97 && char <= 122) 

      char += (shift_factor % 26) #Ensures shift < 26 to avoid repeating alphabet

      if char > 122
        char = 97 + (char - 123) #Wraps from z to a
      end

    end

    new_string << char.chr

  end

  puts "original_string: #{original_string}"
  p new_string

end


caesar_cipher("What a string!", 5)