require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'should be able to dock a bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(subject.dock(bike)).to include bike
  end

  describe '#release_bike' do
    it 'releases a bike' do
      docking_station = DockingStation.new
      bike = Bike.new
      docking_station.dock(bike)
      # we want to release the bike we docked
      expect(docking_station.release_bike). to eq(bike)
    end

    it 'raises an error when there are no bikes available' do
      docking_station = DockingStation.new
      expect { subject.release_bike }.to raise_error("No bikes available")
    end
  end

  it 'should raise an error when docking station full ' do
    docking_station = DockingStation.new
    bike = Bike.new
    DockingStation::DEFAULT_CAPACITY.times { docking_station.dock(bike) }
    expect { docking_station.dock(bike) }.to raise_error("Docking station full")
  end

  it 'should raise an error when docking station full ' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.capacity.times { docking_station.dock(bike) }
    expect { docking_station.dock(bike) }.to raise_error("Docking station full")
  end

  describe '#initialize' do

    it "it initializes with a default capacity" do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

  end

end