class Timer
attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600

    if hours == 0
      minutes = @seconds / 60
    else
      minutes = (@seconds - hours * 3600) / 60
    end

    if hours >= 1
      @seconds = @seconds - (hours * 3600)
    else
      hours = 0
    end

    if minutes >= 1
      @seconds = @seconds - (minutes * 60)
    else
      minutes = 0
    end

    time = "#{hours} #{minutes} #{@seconds}"

    timer = time.split.map do |x|
      if x.length == 0
        x = "00"
      elsif x.length == 1
        x = "0#{x}"
      else
        x
      end
    end

    @time_string = timer.join(":")

    end
    @time_string
  end


@timer = Timer.new
puts @timer.seconds = 10
