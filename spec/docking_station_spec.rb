# In spec/docking_station_spec.rb
require 'docking_station'
require 'rspec/expectations' #Always include this to be able to use rspec/expectations (eg. expect{})

describe DockingStation do
let(:bike) { double :bike } #This is to replace all 'bike' with doubles

  describe "#release_bike" do

    it {should respond_to(:release_bike)}

    it "raises an error when no bikes available" do #no dependency on 'Bike' class
      bike = double(:bike, broken?: false)
      holborn_station = DockingStation.new

      DockingStation::DEFAULT_CAPACITY.times{holborn_station.dock(bike)}

      DockingStation::DEFAULT_CAPACITY.times {holborn_station.release_bike}
      expect{subject.release_bike}.to raise_error("No bikes left")
    end

    it "releases a working bike" do #has dependency on 'Bike' class
      bike = double(:bike, working?: true, broken?: false)
      subject.dock(bike)
      released_bike = subject.release_bike
      expect(released_bike).to be_working
    end

    it "does not release broken bikes" do
      bike = double(:bike, broken?: true)
      subject.dock(bike)
      expect{subject.release_bike}.to raise_error "Bike broken"
    end
  end

  describe "#dock" do

    it {should respond_to(:dock).with(1).argument}

    it "docks a bike" do #no dependency on 'Bike' class
      expect(subject.dock(bike)).to eq [bike]
    end

    it "raises an error when capacity is full" do #no dependency on 'Bike' class
      hoxton_station = DockingStation.new
      DockingStation::DEFAULT_CAPACITY.times do
        hoxton_station.dock(bike)
      end
      expect{hoxton_station.dock(bike)}.to raise_error("No space left")
    end
  end

  describe "#initialize" do

    it "capacity should start with 20" do #no dependency on 'Bike' class
      holborn_station = DockingStation.new
      DockingStation::DEFAULT_CAPACITY.times do
        holborn_station.dock(bike)
      end
      expect{holborn_station.dock(bike)}.to raise_error("No space left")
    end

    it "user can set capacity at initialization" do #no dependency on 'Bike' class
      ealing_station = DockingStation.new(30)
      30.times do
        ealing_station.dock(bike)
      end
      expect{ealing_station.dock(bike)}.to raise_error("No space left")
    end

  end

end
