require 'docking_station'

describe DockingStation do
	#it 'respond_to release_bike' do
		#expect(DockingStation).to responde_to(:release_bike)
	#end
	it { is_expected.to respond_to(:release_bike) } 


	it 'releases working bike' do 
		subject.dock(Bike.new)
		bike = subject.release_bike   #subject refers to any instance in the specific class
		expect(bike).to be_working	   # being describe (in this case DockingStation class)
	end

  	it { is_expected.to respond_to(:dock).with(1).argument }

  	it { is_expected.to respond_to(:bikes) }

  	it 'docks something' do 
    	bike = Bike.new
    	expect(subject.dock(bike)).to eq bike
  	end

  	it 'returns docked bikes' do 
    	bike = Bike.new
    	subject.dock(bike)
    	expect(subject.bikes).to eq bike
  	end

  describe '#release_bike method' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
		#	p subject.bikes.length
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
	    it 'raises an error when the docking station is full' do
    	bike = Bike.new
    	DockingStation::DEFAULT_CAPACITY.times {subject.dock(bike)}
    	expect { subject.dock(bike) }.to raise_error 'The docking station is full!'
    end
  end

	#it { is_expected.to respond_to(:full?) }

	#it { is_expected.to respond_to(:empty?) }

	it 'returns an object when called as an argument' do
		expect(DockingStation.new(25)).to eq true 
	end
end