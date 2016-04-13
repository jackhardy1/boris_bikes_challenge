require_relative 'bike'

class DockingStation
attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
      raise "No bikes left" if @bikes.count == 0
#use apprendice injection (for next step)
  end

  def dock(bike)
    raise "No space left" if @bikes.count >= 20
      @bikes << bike
    # @bikes = bikes
  end
end
