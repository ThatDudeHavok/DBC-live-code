# ROOM CLASS
# Attributes:
# - name
# - width
# - length
# - items (a collection of Item instances)
# Methods:
# - getters for items, name, width, length
# - setter for items, name
# - total value (adds up prices of items)
# - to_s override

class Room
	attr_reader :length, :width
	attr_accessor :items, :Name

	def initialize(name, width, length)
		@name = name
		@width = width
		@length = length
		@items = []
	end

	def total_value
		total = 0
		@items.each do |item|
			total += item.price
		end
		total
	end
end
