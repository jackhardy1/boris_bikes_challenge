# In spec/docking_station_spec.rb
require 'docking_station'
require 'rspec/expectations' #Always include this to be able to use rspec/expectations (eg. expect{})

describe DockingStation do

  it {should respond_to(:release_bike)}

  it "is a working bike" do
    bike = Bike.new
    expect(bike.working?).to eq true
  end

  it {should respond_to(:dock).with(1).argument} #Done!

  it "should show me a docked_bike" do
    bike = Bike.new
    shoreditch_station = DockingStation.new
    shoreditch_station.dock(bike)
    expect(shoreditch_station.docked_bike).to eq bike
end

  it "raises an error when no bikes available" do
    expect{subject.release_bike}.to raise_error("No bikes left")
end
end
