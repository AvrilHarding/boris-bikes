class DockingStation

attr_reader :bike

def initialize
  @bike = []
end

def release_bike
  fail 'No bikes available' if @bike.empty?
  @bike.pop
  #release_bike = Bike.new
end
  def dock_bike(bike)
    fail 'Docking station full' if @bike.count >= 20
  @bike << bike
  end
  end
