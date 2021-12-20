require_relative 'bike'

class DockingStation
  
  attr_reader :docked_bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      fail "No bikes available"
    else
      @bikes.pop
    end
  end
  
  def dock(bike)
    @bikes.push(bike)
  end
  
end