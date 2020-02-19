require 'docking_station'

describe DockingStation do
    it { is_expected.to respond_to(:release_bike) }

    # it 'release working bike' do
    #   bike = subject.release_bike
    #   expect(bike).to be_working
    # end
describe '#release_bike' do
  it 'raises an error when there are no bikes available' do
    expect { subject.release_bike }.to raise_error 'No bikes available'
end
    it 'releases a bike' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end
end

    it { is_expected.to respond_to(:dock_bike).with(1).argument }

      it { is_expected.to respond_to(:bike) }

        it 'docks something' do
          bike = Bike.new
          expect(subject.dock_bike(bike)).to eq bike
        end

describe '#dock' do
  it 'raises an error when full' do
  subject.dock_bike(Bike.new)
  expect { subject.dock_bike Bike.new}. to raise_error 'Docking station full'
  end
end

    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.bike).to eq bike
    end
  end


#     docking_station = DockingStation.new
#     it "it gets a bike" do
#       expect(docking_station.release_bike).to be_instance_of(Bike)
#     end
#
#     bike = docking_station.release_bike
#     it "new bike works" do
#       expect(bike.working?).to eq(true)
#     end
#    #
#    #  bike = docking_station.dock_bike
#    #  it "it docks the bike at the docking station" do
#    #   expect(bike).to respond_to(true)
#    # end
#
# end
#
#   docking_station = DockingStation.new
#   it "can release a bike" do
#     expect(docking_station).to respond_to(:release_bike)
