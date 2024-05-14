extends Player

func _ready():
	super._ready()
	shoot_dir = Vector2(0.0, -1.0)
	
func PickUpWeapon(weaponBlueprint: WeaponBlueprint):
	super.PickUpWeapon(weaponBlueprint)
	weapon.add_to_group("player_1")
	weapon.enemyGroup = "player_2"
