# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Couple.destroy_all
Gift.destroy_all
Item.destroy_all
Registry.destroy_all
# Let's create a bunch of records

Couple.create(
	name1: "Sarah",
    name2: "ted",
    date: "06/10/2016",
    email: "sarah@sarah.com",
    password_digest: "1234",
    registry_id: " "
    )


Item.create([
	{
	name: "Life Vest",
    price: "25.00",
    description: "A divise that we would where if/when the boat senks"
	},
	{
	name: "wheel",
    price: "50.00",
    description: "how we will make the boat go where we want"
	}
])
Registry.create(
	theam: "boat",
	item_id: " ",
	gift_id: " "
	)
G




