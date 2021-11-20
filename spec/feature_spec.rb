# .0.0 :001 > require './lib/docking_station'
#  => true 
# 3.0.0 :002 > require './lib/bike'
#  => false 
# 3.0.0 :003 > docking_station = DockingStation.new
#  => #<DockingStation:0x00007fbae19cdfa8> 
# 3.0.0 :004 > bike = Bike.new
#  => #<Bike:0x00007fbae380f660> 
# 3.0.0 :005 > docking_station.release_bike