# HOUSE MAKER

# Allow the user to create a house,
# then add rooms,
# then add items

# House can have up to 5 rooms
# Room can have an unlimited number of items

# BUSINESS LOGIC

def add_room_to_house!(house, room_name)
	# Change return false to return error
	p room_name
	return false if house.keys.length == 5
	house[room_name] = []
	return true
end

def add_item_to_room!(house, room_name, item_name)
	# checkout difference between shovel
	# operator(<<) and push operator(.push)
	house[room_name] << item_name
end

house = {}

# USER INTERFACE

def print_house(house)
	p house
end

# TEST CODE

rooms = ["Living room", "bedroom", "bathroom", "kitchen", "bedroom 2", "bedroom 3"]

rooms.each do |room|
	room_added = add_room_to_house!(house, room)
	add_item_to_room!(house, room, "cat") if room_added
end

print_house(house)
