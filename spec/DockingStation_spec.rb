require 'DockingStation'

describe DockingStation do
it {is_expected.to respond_to :release_bike}

it "releases a working bike" do
  bike = subject.release_bike
  expect(bike).to be_working
end

  it { is_expected.to respond_to(:docking).with(1).argument }

it { is_expected.to respond_to(:bike) }
it 'docks something' do
    bike = Bike.new
    expect(subject.docking(bike)).to eq bike
end
end
