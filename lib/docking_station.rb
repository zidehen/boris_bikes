require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity, :report_broken

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity 
  end

  def release_bike
    fail "No bikes available" if empty?
    # fail "Sorry, this bike is broken" if broken?
    @bikes.pop
  end
  
  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end

  private

  # def broken?
  #   @report_broken
  # end
  
  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= @capacity
  end

end