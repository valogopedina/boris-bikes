require 'docking_station'

describe DockingStation do
	#it 'respond_to release_bike' do 
		#expect(DockingStation).to responde_to(:release_bike)
	#end
	it { is_expected.to respond_to(:release_bike)}

end
