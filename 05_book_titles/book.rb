class Book
attr_reader :title

  def title=(input)
      argv = input.split.map.with_index do |x, i|
          if x =~ /[0-9]/
            x
          elsif i == 0
            x.capitalize!
          elsif x == "i"
            x.capitalize!
          elsif %w(the a an and in of).include?(x)
            x
          else
            x.capitalize!
          end
        end
      @title = argv.join(" ")
    end
end
