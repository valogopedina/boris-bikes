require_relative 'bike'

class DockingStation
  attr_reader :bike
  # def bike           
  #   @bike # => nil
  # end

  def dock(docked_bike)
  	fail 'The docking station is full!' if @bike
    @bike = docked_bike
  end

	def release_bike
    	fail 'No bikes available' unless @bike #this message when there are not bikes
    	@bike
	end

	#attr_reader :test_method 	# attr_reader creates a method which returns 
								#the istance variable with the same name as method
	# def test_method
	#   @test_method
	# end
end
