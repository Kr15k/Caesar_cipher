def caesar_cipher(string, shift_factor)
    encrypted = []
    string.each_char { |c|
        if c == " "
            encrypted.push(c)
        elsif c.ord.between?(65,90)
            crypted = ((((c.ord - 65) + shift_factor) % 26) + 65).chr
            encrypted.push(crypted)
        elsif c.ord.between?(97,122)
            crypted = ((((c.ord - 97) + shift_factor) % 26) + 97).chr
            encrypted.push(crypted)
        else
            encrypted.push(c)
        end
    }
    puts encrypted.join()
end

puts "1 text, 2 shift_factor"
caesar_cipher(gets, gets.to_i)