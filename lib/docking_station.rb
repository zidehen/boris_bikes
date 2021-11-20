require_relative 'bike'

class DockingStation
  
  attr_reader :bike

  def release_bike
    fail "No bikes available" unless @bike
    @bike
  end

  def dock(bike)
<<<<<<< HEAD
    @bike_available.push(bike)
=======
    @bike = bike
>>>>>>> be19093a41ab8745214ee05172a4094eb81039b5
  end
  
end