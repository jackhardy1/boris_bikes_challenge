require_relative 'bike'

class DockingStation

  def release_bike
   bike = Bike.new #this is a bad design (use appedices injection)
  end

def dock(bike)
  docked_bike = bike
end

end
