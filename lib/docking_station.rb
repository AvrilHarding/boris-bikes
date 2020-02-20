class DockingStation

attr_reader :capacity
attr_accessor :capacity

DEFAULT_CAPACITY = 20


def initialize(capacity=DEFAULT_CAPACITY)
  @bike = []
  @capacity = capacity
end

def release_bike
  fail 'No bikes available' if empty?
  bikes.pop
  #release_bike = Bike.new
end
  def dock_bike(bike)
    fail 'Docking station full' if full?
  bikes << bike
  end

private

attr_reader :bikes

  def full?
  bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end
end
