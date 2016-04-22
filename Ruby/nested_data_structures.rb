house = {

	basement: {
		storage_closet: ['christmas decorations', 'luggage'],
		main_room: [nil],
		boiler_room: ['water heater', 'boxes'],
	},

	first_floor: first_floor_rooms = {
		kitchen: ['stove', 'refridgerator', 'kitchen table', 'cabinets' ],
		dining_room: ['dining table', 'chairs'],
		living_room: ['television','couch', 'lovesit', 'recliner', 'coffee table'],
		garage: ['car1', 'car2', 'tools', 'gardening supplies', 'ladder', 'hose'],
	},

	second_floor: second_floor_rooms = {

		master_bedroom:[ master_bathroom = ['toilet', 'sink', 'shower', 'mirror'],'bed','desk','dresser','television','computer',],

		single_bedroom: [
			'bed', 
			'desk', 
			dresser = { 
				top_drawer: ['socks', 'underwear'], 
				middle_drawer: ['t-shirts', 'shorts'], 
				bottom_drawer: ['sweatshirts', 'sweatpants'],
				} ,
			'television', 
			'computer',
			'book shelf',
		],

		guest_bedroom: [
			'bed', 
			'desk', 
			'dresser', 
			'book shelf',
		],

		bath_room: ['toilet', 'sink', 'bath tub', 'mirror'],
	},

}

#p house


#return the first item in the middle drawer from the single bedroom on the second floor in the house. should return t-shirts.

p house[:second_floor][:single_bedroom][2][:middle_drawer][0]

#change bed in master bedroom to "king sized bed"
p house[:second_floor][:master_bedroom][1]
p house[:second_floor][:master_bedroom][1] = "king sized bed"
p house[:second_floor][:master_bedroom][1]

#reverse the order of the items in the bathroom on the second floor

p house[:second_floor][:bath_room].reverse

#add a walkin closet to the master bedroom with 10 shirts, 7 pants, 2 suits, and 6 shoes in it
walkin_closet = {shirts: 10, pants: 7, suits: 2, shoes: 6}
house[:second_floor][:master_bedroom] << walkin_closet
p house[:second_floor][:master_bedroom].last


#add a rocking chair to the living room
p house[:first_floor][:living_room] << 'rocking chair'

#change the bed in the single bedroom to a bunk bed
p house[:second_floor][:single_bedroom][0] = 'bunk bed'
p house[:second_floor][:single_bedroom]
