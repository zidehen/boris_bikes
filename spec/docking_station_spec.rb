require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  # it { expect(subject.release_bike).to be_an_instance_of(Bike) }
  # it { is_expected.to respond_to :dock }

  # it 'should be able to dock a bike and return bikes available' do
  #   bike = Bike.new
  #   subject.dock(bike)
  #   expect(subject.bike_available).to include(bike)
  # end
  
  # it { expect { subject.release_bike }.to raise_error("no bikes available") }

end