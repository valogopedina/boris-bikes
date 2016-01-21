require 'docking_station'

describe DockingStation do
	#it 'respond_to release_bike' do
		#expect(DockingStation).to responde_to(:release_bike)
	#end
	it { is_expected.to respond_to(:release_bike)} #ok


	it 'releases working bike' do #ok
		subject.dock(Bike.new)
		bike = subject.release_bike #subject refers to any instance in the specific class 
		expect(bike).to be_working	# being describe (in this case DockingStation class)
	end

  	it { is_expected.to respond_to(:dock).with(1).argument }#ok

  	it { is_expected.to respond_to(:bike) }#ok

  	it 'docks something' do #ok
    	bike = Bike.new
    	expect(subject.dock(bike)).to eq bike
  	end

  	it 'returns docked bikes' do #ok
    	bike = Bike.new
    	subject.dock(bike)
    	expect(subject.bike).to eq bike
  	end

  

  



  #it 'checks if any bikes available' do
    #expect { @docked_bike }.not_to raise_error
   # expect { raise "No bikes available!" }.to raise_error(RuntimeError, "No bikes available!")
  #end

  describe '#release_bike method' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
end
