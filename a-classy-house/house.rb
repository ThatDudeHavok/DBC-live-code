# Build a house out of classes

# HOUSE CLASS
# Attributes:
# - rooms (a collection of Romm instances)
# Methods:
# - getter for rooms
# - add_room (only allows up to 10 rooms)
# - square_footage(adds up the house's
# square footage and returns it as an integer)
# - total_value (ads up the value of items
# in all rooms)
# - to_s override

living_room = Room.new("Living room", 20, 35)
puts living_room
piano = Item.new("Piano", "black", 10000)
box = Item.new("cardboard box", "brown", 0)
living_room.items << piano
living_room.items << box
puts living_room.total_value
