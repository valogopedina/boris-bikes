require_relative 'bike'

class DockingStation
  attr_reader :docked_bike
  # def docked_bike
  #   @docked_bike
  # end

	def release_bike
		Bike.new
	end

	def dock(docked_bike)
		@docked_bike = docked_bike
	end

	#attr_reader :test_method 	# attr_reader creates a method which returns 
								#the istance variable with the same name as method
	# def test_method
	#   @test_method
	# end
end
