class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def time_string
    if @seconds >= 60 
      @minutes = @seconds/60
      @seconds = @seconds - @minutes*60
    end
    if @minutes >= 60
      @hours = @minutes/60
      @minutes = @minutes - @hours*60
    end
    "#{"%02d" % @hours}:#{"%02d" % @minutes}:#{"%02d" % @seconds}"
  end
end
