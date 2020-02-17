require 'boris-bikes'
describe DockingStation do
    it { is_expected.to respond_to(:release_bike) }
end
  # docking_station = DockingStation.new
  # it "can release a bike" do
  #   expect(docking_station).to respond_to(:release_bike)
