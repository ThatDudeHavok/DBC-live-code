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
	puts "-"*10
	puts "Current house configuration"
	house.each do |room, items|
		puts "#{room}: #{items}"
	end
	puts "-"*10
end

# Let the user add rooms
can_add_rooms = true

# Stop loop when rooms cannot be added
while can_add_rooms
	# Get a room name from the user
	puts "Type the name of a room to add (or type 'done'):"
	room_name = gets.chomp
	# If the user is done, stop loop
	break if room_name == 'done'
	# Otherwise, add the room to the house
	can_add_rooms = add_room_to_house!(house, room_name)
	print_house(house)
end
# Let the user add items to rooms
