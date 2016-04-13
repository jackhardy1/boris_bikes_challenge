require_relative 'bike'

class DockingStation
attr_reader :docked_bike

  def release_bike
      raise "No bikes left" unless @docked_bike
#use apprendice injection (for next step)
  end

  def dock(bike)
    @docked_bike = bike
  end

end
