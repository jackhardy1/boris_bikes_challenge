require_relative 'bike'

class DockingStation
  attr_reader :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def dock(bike)
    raise "No space left" if full?
    @bikes << bike
  end
  
  def release_bike
    if @bikes.last.working? == false
      raise "Bike broken"
    elsif empty?
      raise "No bikes left"
    else
      @bikes.pop
      #use apprendice injection (for next step)
    end
  end

  private
  attr_reader :bikes

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.count == 0
  end
end
