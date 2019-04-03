require 'DockingStation'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases a working bike' do
    bike = Bike.new
    expect(bike).to be_working
  end

  it "raise error" do
    expect { subject.release_bike }.to raise_error("No bike is available")
  end

  it { is_expected.to respond_to(:docking).with(1).argument }

  it { is_expected.to respond_to(:bike) }
  it 'docks something' do
    bike = Bike.new
    expect(subject.docking(bike)).to eq bike
  end
end
