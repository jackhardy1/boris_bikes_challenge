require_relative 'bike'

class DockingStation

  attr_reader :spaces

  def initialize
    @spaces = 10
  end

  def release_bike
   Bike.new
  end

  def dock
    @spaces -= 1
  end

end
