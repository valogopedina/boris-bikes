require 'docking_station'

describe DockingStation do
	#it 'respond_to release_bike' do
		#expect(DockingStation).to responde_to(:release_bike)
	#end
	it { is_expected.to respond_to(:release_bike)}

	it 'releases working bike' do
		bike = subject.release_bike #subject refers to any instance in the specific class 
		expect(bike).to be_working	# being describe (in this case DockingStation class)
	end

  	it { is_expected.to respond_to(:dock).with(1).argument}

  	dockingstation = DockingStation.new
  	bike = dockingstation.release_bike
  	it { expect(dockingstation.dock(bike)).to eq bike}

  	it { is_expected.to respond_to(:)}


end
