class DockingStation

attr_reader :bike

  def dock_bike(bike)
    fail 'Docking station full' if @bike
  @bike = bike
  end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
    #release_bike = Bike.new
  end
end
