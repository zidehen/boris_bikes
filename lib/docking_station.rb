require_relative 'bike'

class DockingStation
  
  attr_reader :bike_available

  def initialize
    @bike_available = []
  end

  def release_bike
    if bike_available.empty?
      raise "no bikes available"
    else
      bike = bike_available.pop
    end 
  end

  def dock(bike)
    @bike_available.push(bike)
  end
end