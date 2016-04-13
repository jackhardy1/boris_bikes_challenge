# In spec/docking_station_spec.rb
require 'docking_station'
require 'rspec/expectations' #Always include this to be able to use rspec/expectations (eg. expect{})

describe DockingStation do

  it "is a working bike" do #this check that it works with the 'Bike' class
    expect(Bike.new.working?).to eq true
  end

  # it "should show me a docked_bike" do
  #   bike = Bike.new
  #   shoreditch_station = DockingStation.new
  #   shoreditch_station.dock(bike)
  #   expect(shoreditch_station.docked_bike).to eq bike
  # end

  #we took the above out, because it is no longer relevant. It conflicts with "raise an error when no space left..."
    describe "#release_bike" do

      it {should respond_to(:release_bike)}

      it "raises an error when no bikes available" do
        expect{subject.release_bike}.to raise_error("No bikes left")
      end

        describe "#dock" do

          it {should respond_to(:dock).with(1).argument}

  # it "raises an error when no space left in docking station" do
  #   hoxton_station = DockingStation.new
  #   bike = Bike.new
  #   expect{hoxton_station.dock(bike)}.to raise_error("No space left")
  # end
        it "raises an error when capacity reaches 20" do
          hoxton_station = DockingStation.new
          20.times{hoxton_station.dock(Bike.new)}
          expect{hoxton_station.dock(Bike.new)}.to raise_error("No space left")
        end
      end
    end
end
