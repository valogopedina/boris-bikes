require_relative 'bike'

class DockingStation
  # attr_reader :bikes
  def initialize
    @bikes = []
  end
  def bikes
    @bikes[0] # => nil
  end

  def dock(docked_bike)
  	fail 'The docking station is full!' if full?    #@bikes.length >= 20
    @bikes << docked_bike
    docked_bike
  end

	def release_bike
    	fail 'No bikes available' if empty? #this message when there are not bikes
    	@bikes.pop

	end

	private

	def full?
		@bikes.length >= 20 
	end

	def empty?
		@bikes.length == 0 
	end

	#attr_reader :test_method 	# attr_reader creates a method which returns
								#the istance variable with the same name as method
	# def test_method
	#   @test_method
	# end
end
