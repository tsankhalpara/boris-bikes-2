require_relative 'bike'

class DockingStation
  attr_reader :bike
  def release_bike
    raise "No bike is available" unless @bike
    @bike
  end

  def docking(bike)
    raise "Docking station full" if @bike
    @bike = bike
  end
end
