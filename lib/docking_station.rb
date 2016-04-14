require_relative 'bike'

class DockingStation
  attr_reader :bikes

  public
  def initialize
    @bikes = []
  end

  def dock(bike)
    raise "No space left" if full?
    @bikes << bike
  end

  def release_bike
    raise "No bikes left" if empty?
    @bikes.pop
    #use apprendice injection (for next step)
  end

  private
  def full?
    bikes.count >= 20
  end

  def empty?
    bikes.count == 0
  end
end
