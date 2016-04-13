# In spec/docking_station_spec.rb
require 'docking_station'

describe DockingStation do

  it {should respond_to(:release_bike)}

  it "is an instance of Bike" do
    expect(subject.release_bike).to be_a Bike
  end

  it "is a working bike" do
    expect(subject.release_bike.working?).to eq true
  end

  it {should respond_to(:dock).with(1).argument} #Done!

  it "should show me a docked_bike" do
  station = DockingStation.new
  bike = station.release_bike
  station.dock(bike)
  docked = station.docked_bike
  expect(docked).to eq bike
end
end
