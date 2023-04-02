extends Node
# This is script which manages save files (player.save and settings.cfg)

var CONFIG_PATH := "user://config.cfg"

var _config: ConfigFile

func _ready() -> void:
	_config = ConfigFile.new()
