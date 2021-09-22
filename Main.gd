# AUTHOURS: Leviathan Guillena
# LAST MODIFIED: April 20, 2021
# Initializes game, opens main menu.

extends Node

func _ready():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://scenes/MainMenu.tscn")
