# ITEM CLASS
# Attributes:
# - name
# - color
# - price
# Methods:
# - getters for color, price, name
# - to_s override

# Item is a super vague class name, something like
# furniture would probably be a better idea. But,
# item was used in the last live code 'house builder'
# or something of that manner. So, we're gonna stick
# with the naming convention.
class Item
	attr_reader :name, :color, :price

	def initialize(name, color, price)
		@name = name
		@color = color
		@price = price
	end

	def to_s
		"A #{@color} #{@name} that cost #{@price} cents"
	end
end
