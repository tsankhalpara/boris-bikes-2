require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bike is available' if empty?
    @bikes.pop
  end

  def docking(bike)
    raise 'Docking station full' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end
end
