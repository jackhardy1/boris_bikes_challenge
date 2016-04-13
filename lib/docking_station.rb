require_relative 'bike'

class DockingStation
attr_reader :docked_bike
  #
  # def initialize
  #   @capacity = "full"
  # end

  def release_bike
      raise "No bikes left" unless @docked_bike
#use apprendice injection (for next step)
  end

  def dock(bike)
    raise "No space left" unless @docked_bike
    @docked_bike = bike
  end
end
