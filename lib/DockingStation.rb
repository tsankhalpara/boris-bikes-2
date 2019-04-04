require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bike is available" if @bikes.empty?
    @bikes.pop
  end

  def docking(bike)
    raise "Docking station full" if @bikes.count >= 20
    @bikes << bike
  end
end
