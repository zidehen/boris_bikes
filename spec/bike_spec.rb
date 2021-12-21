require "bike"
describe Bike do
  it { is_expected.to respond_to :working? }
  it { expect(subject.working?).to be (true) }

  it 'can report a bike as broken when returned' do
    bike = Bike.new
    bike.report_broken
    expect(bike).to be_broken
  end
end