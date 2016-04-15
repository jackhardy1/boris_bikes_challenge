require_relative 'bike'

class DockingStation
  attr_accessor :capacity
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
    raise "No bikes left" if empty?
    raise "Bike broken" if @bikes.last.broken?
    @bikes.pop 
    #use dependency injection (for next step)
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
