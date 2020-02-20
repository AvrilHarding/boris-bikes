require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

it 'has a default capacity' do
  expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
end

describe '#release_bike' do
  it 'releases a bike' do
  bike = Bike.new
  subject.dock_bike(bike)
  expect(subject.release_bike).to eq bike
end

it 'raises an error when there are no bikes available' do
  expect { subject.release_bike }.to raise_error 'No bikes available'
end
end


describe 'initialization' do
  subject { DockingStation.new }
  let(:bike) { Bike.new }
  it 'defaults capacity' do
    described_class::DEFAULT_CAPACITY.times do
      subject.dock_bike(bike)
    end
    expect{ subject.dock_bike(bike) }.to raise_error 'Docking station full'
  end
end
#   it 'has a variable capacity' do
#     docking_station = DockingStation.new(50)
#     50.times { docking_station.dock_bike Bike.new}
#     expect{ docking_station.dock_bike Bike.new }.to raise_error 'Docking station full'
#   end
# end


  end

  # it { is_expected.to respond_to(:dock_bike).with(1).argument }
  # it { is_expected.to respond_to(:bike) }

  describe '#dock' do
    it 'raises an error when full' do
      subject.capacity.times { subject.dock_bike Bike.new }
    expect { subject.dock_bike Bike.new }.to raise_error 'Docking station full'
  end

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq [bike]
end
#
  # it 'returns docked bikes' do
  #     bike = Bike.new
  #     subject.dock_bike(bike)
  #    expect(subject.bike).to eq bike
  #   end
  # end
end





# it 'release working bike' do
#   bike = subject.release_bike
#   expect(bike).to be_working  # end
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
