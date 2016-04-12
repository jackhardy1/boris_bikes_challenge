
require_relative './lib/docking_station.rb'
require_relative './lib/bike.rb'

station = DockingStation.new
bike = station.release_bike
p bike.dock
# bike.working?
# bike.dock
