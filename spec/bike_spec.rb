require "bike"
describe Bike do
  it { expect(subject).to respond_to(:working?) }
  it { expect(subject.working?).to be(true) }
end