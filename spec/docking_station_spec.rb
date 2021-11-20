require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  # it 'releases working bikes' do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end
  # updated unit test for release_bike below

  # it { is_expected.to respond_to(:dock).with(1).argument }
  it 'docks something' do
    bike = Bike.new
    # We want to return the bike we dock
    expect(subject.dock(bike)).to eq bike
  end
  # it { is_expected.to respond_to(:bike) }
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    # We need to return the bike we just docked
    expect(subject.bike).to eq bike
  end
    describe '#release_bike' do
      it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
        # we want to release the bike we docked
        expect(subject.release_bike). to eq(bike)
      end

      it 'raises an error when there are no bikes available' do
        # remember subject == DockingStation.new
        expect { subject.release_bike }.to raise_error("No bikes available")
      end
    end

end