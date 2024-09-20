# char value is an acsii integer representation # rubocop:disable Style/FrozenStringLiteralComment

def caesar_cipher(string, shift_factor)
  # original_string = string
  new_string = ''

  string.each_byte do |char|
    # Upper case shift
    if char >= 65 && char <= 90

      char += (shift_factor % 26) # Ensures shift < 26 to avoid repeating alphabet

      if char > 90
        char = 65 + (char - 91) # Wraps from Z to A
      end

    end

    # Lower case shift
    if char >= 97 && char <= 122

      char += (shift_factor % 26) # Ensures shift < 26 to avoid repeating alphabet

      if char > 122
        char = 97 + (char - 123) # Wraps from z to a
      end

    end

    new_string << char.chr
  end

  # puts "original_string: #{original_string}"
  p new_string
end

caesar_cipher('What a string!', 5)
