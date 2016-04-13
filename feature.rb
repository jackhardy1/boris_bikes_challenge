
require_relative './lib/docking_station.rb'
require_relative './lib/bike.rb'

station = DockingStation.new
bike = station.release_bike
station.dock(bike)
p bike
p station.docked_bike

# bike.working?
# bike.dock
