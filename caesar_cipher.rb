def cipher(string, shift)
  lowercase = ('a'..'z').to_a
  uppercase = lowercase.map(&:upcase)
  result = ''
  string.split('').each do |i|
    if lowercase.include? i
      result += lowercase[(lowercase.index(i) + shift) % 26]
    elsif uppercase.include? i
      result += uppercase[(uppercase.index(i) + shift) % 26]
    else
      result += i
    end
  end
  result
end

p cipher("What a string!", 5)
