
require_relative './lib/docking_station.rb'
require_relative './lib/bike.rb'

station = DockingStation.new
bike = Bike.new
bike = bike.broken
station.dock(bike)

p station.release_bike
p bike.working?
