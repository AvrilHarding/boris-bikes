require 'docking_station'

describe DockingStation do
    it { is_expected.to respond_to(:release_bike) }

    docking_station = DockingStation.new
    it "it gets a bike" do
      expect(docking_station.release_bike).to be_instance_of(Bike)
    end

    bike = docking_station.release_bike
    it "new bike works" do
      expect(bike.working?).to eq(true)
    end

    bike = docking_station.dock_bike
    it "it docks the bike at the docking station" do
     expect(bike).to respond_to(DockingStation)
   end

end

  # docking_station = DockingStation.new
  # it "can release a bike" do
  #   expect(docking_station).to respond_to(:release_bike)
