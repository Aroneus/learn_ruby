#write your code here
def translate input
x = input.length
words = input.split
i = 0

while i < words.length
current = words[i]
x = words[i].length
  if current[0..1] =~ /qu/
    words[i] = current[2..x] + current[0..1] + "ay"
  elsif current[1..2] =~ /qu/
    words[i] = current[3..x] + current[0..2] + "ay"
  elsif current[0] =~ /[aeiou]/
    words[i] = current + "ay"
  elsif current[1] =~ /[aeiou]/
    words[i] = current[1..x] + current[0] + "ay"
  elsif current[2] =~ /[aeiou]/
    words[i] = current[2..x] + current[0..1] + "ay"
  else
    words[i] = current[3..x] + current[0..2] + "ay"
  end
  i += 1
end
  output = words.join(" ")
end

puts translate "quiet"
puts translate "square"
