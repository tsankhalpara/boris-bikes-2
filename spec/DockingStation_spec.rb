require 'DockingStation'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "has a DEFAULT_CAPACITY" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it 'releases a working bike' do
    bike = Bike.new
    expect(bike).to be_working
  end

  it "raise error if no bike is available" do
    expect { subject.release_bike }.to raise_error("No bike is available")
  end

  it "raise error if docking station is full on default capacity" do
    bike = Bike.new
    subject.capacity.times{subject.docking(bike)}
    expect { subject.docking(bike)}.to raise_error("Docking station full")
  end

  it "raise error if docking station is full on setted capacity" do
    bike = Bike.new
    docking_station = DockingStation.new(10)
    10.times{docking_station.docking(bike)}
    expect { docking_station.docking(bike)}.to raise_error("Docking station full")
  end

  it { is_expected.to respond_to(:docking).with(1).argument }

  it { is_expected.to respond_to(:bike) }
  it 'docks something' do
    bike = Bike.new
    bikes = []
    bikes << bike
    expect(subject.docking(bike)).to eq bikes
  end
end
