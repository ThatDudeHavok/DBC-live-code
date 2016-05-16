# HOUSE MAKER

# Allow the user to create a house,
# then add rooms,
# then add items

# House can have up to 5 rooms
# Room can have an unlimited number of items

# BUSINESS LOGIC

def add_room_to_house(house, room_name)
	house[room_name] = []
end

house = {}

# TEST CODE

rooms = ["Living room", "bedroom", "bathroom", "kitchen"]

rooms.each do |room|
	add_room_to_house(house, room)
end
p house

# USER INTERFACE
