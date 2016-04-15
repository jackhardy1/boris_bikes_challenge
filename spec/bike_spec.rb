require 'bike'



describe Bike do

  let(:bike) {Bike.new}

  it {should respond_to(:working?)}

  it "is a working bike, unless specified else" do #this check that it works with the 'Bike' class
    expect(bike.working?).to eq true
  end
end
