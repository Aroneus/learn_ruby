def echo input
  input
end

def shout input
  input.upcase
end

def repeat(input, reps=2)
  [input] * reps * ' '
end

def start_of_word(input, letters=1)
  input[0..letters - 1]
end

def first_word(input)
  input.split[0]
end

def titleize(input)
  argv = input.split
    argv.each do |x|
      if (x == "and"|| x == "or"|| x == "the" || x == "over") && (x != argv[0])
        next
      else
        x.capitalize!
      end
    end
  argv.join(" ")
end
