# In spec/docking_station_spec.rb
require 'docking_station'

describe DockingStation do

  it {should respond_to(:release_bike)}
  :release_bike should == Bike.new
end
