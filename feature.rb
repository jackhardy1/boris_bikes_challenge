
require_relative './lib/docking_station.rb'
require_relative './lib/bike.rb'

station = DockingStation.new
bike = station.release_bike
bike.working?
p bike.dock
