require 'DockingStation'

describe DockingStation do
it {is_expected.to respond_to :release_bike}

it "releases a working bike" do
  bike = subject.release_bike
  expect(bike).to be_working
end

it "dockingstation allows bike to be docked" do
  bike = subject.release_bike
  expect(subject.docking(bike)).to eq "bike is docked"
end


end
