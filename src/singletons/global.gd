extends Node
# This is global script which stores global variables and helps with some global processes
# like pausing game, finding nodes at tree, switching scenes etc.

# ---------- VARIABLES ----------

var screen_width: int; var screen_height: int; var ratio := ":"

func _ready() -> void:
	screen_width = int(get_viewport().get_visible_rect().size.x)
	screen_height = int(get_viewport().get_visible_rect().size.y)
	var gcd := _gcd(screen_width, screen_height)
	ratio = str(float(screen_width / gcd)) + ratio + str(float(screen_height / gcd))
	print_debug("\t", "screen_width=", screen_width, ", screen_height=", screen_height, ", ratio=", ratio)
	RenderingServer.set_default_clear_color(Color(0, 0, 0, 0))

# NOD
func _gcd(a: int, b: int) -> int:
	while a > 0 and b > 0:
		if a > b:
			a %= b
		else:
			b %= a
	return a + b
