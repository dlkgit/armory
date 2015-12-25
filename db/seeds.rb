# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Populate gun types
type = GunType.find_or_create_by(name: "Shotgun")
type = GunType.find_or_create_by(name: "Rifle")
type = GunType.find_or_create_by(name: "Pistol")
type = GunType.find_or_create_by(name: "Revolver")
type = GunType.find_or_create_by(name: "Airgun")

# Populate propellent types
type = PowderType.find_or_create_by(name: "Black Powder")
type = PowderType.find_or_create_by(name: "Smokeless Powder")
type = PowderType.find_or_create_by(name: "Airgun - pump")
type = PowderType.find_or_create_by(name: "Airgun - CO2 catridge")

# Populate action types
action = GunAction.find_or_create_by(action_type: "Single Shot")
action = GunAction.find_or_create_by(action_type: "Lever Action")
action = GunAction.find_or_create_by(action_type: "Semi-automatic")
action = GunAction.find_or_create_by(action_type: "Bolt Action")
action = GunAction.find_or_create_by(action_type: "Pump")

# Populate Manufacturers
mfgr = Manufacturer.find_or_create_by(name: "Remington")
mfgr = Manufacturer.find_or_create_by(name: "Colt")
mfgr = Manufacturer.find_or_create_by(name: "Ruger")
mfgr = Manufacturer.find_or_create_by(name: "Smith and Wesson")
mfgr = Manufacturer.find_or_create_by(name: "Winchester")
mfgr = Manufacturer.find_or_create_by(name: "Browning")
mfgr = Manufacturer.find_or_create_by(name: "Heckler & Koch")
mfgr = Manufacturer.find_or_create_by(name: "Thompson/Center")