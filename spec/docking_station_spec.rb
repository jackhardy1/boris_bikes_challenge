# In spec/docking_station_spec.rb
require 'docking_station'
require 'rspec/expectations' #Always include this to be able to use rspec/expectations (eg. expect{})

describe DockingStation do

  it "is a working bike" do #this check that it works with the 'Bike' class
    expect(Bike.new.working?).to eq true
  end

    describe "#release_bike" do

      it {should respond_to(:release_bike)}

        it "raises an error when no bikes available" do
          expect{subject.release_bike}.to raise_error("No bikes left")
        end

          it "When release_bike is called, '@bikes reduces by 1'" do
            brixton_station = DockingStation.new
            brixton_station.dock(Bike.new)
            expect{brixton_station.release_bike}.to change{brixton_station.bikes.length}.by(-1)
          end

          describe "#dock" do

            it {should respond_to(:dock).with(1).argument}

              it "raises an error when capacity reaches 20" do
                hoxton_station = DockingStation.new
                20.times{hoxton_station.dock(Bike.new)}
                expect{hoxton_station.dock(Bike.new)}.to raise_error("No space left")
              end


          end
    end
end
