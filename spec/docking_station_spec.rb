require 'docking_station'
require 'bike'

describe DockingStation do
  subject(:docking_station) { described_class.new }
  let(:bike) { double :bike }

  it { is_expected.to respond_to :release_bike }

  it 'should be able to dock a bike' do
    expect(subject.dock(:bike)).to include :bike
  end

  describe '#release_bike' do
    it 'releases a bike' do

      docking_station.dock(:bike)
      # we want to release the bike we docked
      expect(subject.release_bike). to eq(:bike)
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error("No bikes available")
    end
    # it 'raises an error when trying to release broken bike' do
    #   bike.report_broken
    #   docking_station.dock(bike)
    #   docking_station.release_bike
    #   expect { docking_station.release_bike }.to raise_error("Sorry, this bike is broken")
    # end
  end

  it 'should raise an error when docking station full ' do
    DockingStation::DEFAULT_CAPACITY.times { subject.dock(:bike) }
    expect { subject.dock(:bike) }.to raise_error("Docking station full")
  end

  it 'should raise an error when docking station full ' do
    subject.capacity.times { subject.dock(:bike) }
    expect { subject.dock(:bike) }.to raise_error("Docking station full")
  end

  describe '#initialize' do

    it "it initializes with a default capacity" do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

  end

end