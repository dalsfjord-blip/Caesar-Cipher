

def caesar_cipher(string, shift)
  string.chars.map do |char|
    if char.between?('a', 'z')
      base = 'a'.ord
      rotated = (char.ord - base + shift) %26
      (rotated + base).chr
    elsif char.between?('A', 'Z')
    base = 'A'.ord
    rotated = (char.ord - base + shift) %26
    (rotated + base).chr
    else
      char
    end
     end.join
end
puts caesar_cipher("What a string!", 5)