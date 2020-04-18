class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    time = []
    counter = @seconds

    return "00:00:00" if @seconds == 0

    #hours first.
    if counter % 3600 > 0
      hrs = counter / 3600
      time << padded(hrs)
      counter -= 3600 * hrs
    else
      time << "00"
    end

    if counter % 60 > 0
      min = counter / 60 
      time << padded(min)
      counter -= 60 * min
    else
      time << "00"
    end

    time << padded(counter)

    @seconds = time.join(":")
    

  end

  def padded(num)
    return num.to_s if num >= 10

    return "0" + num.to_s

  end

end
