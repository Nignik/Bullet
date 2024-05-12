extends Player

func _ready():
	super._ready()
	shoot_dir = Vector2(0.0, -1.0)
	
func PickUpWeapon(weapon_id:String):
	super.PickUpWeapon(weapon_id)
	weapon.add_to_group("player_1")
	weapon.enemyGroup = "player_2"
