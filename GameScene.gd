# AUTHOURS: Leviathan Guillena, Xiaoding Ma
# LAST MODIFIED: April 20, 2021
# Triggers game over screen when win or lose conditions are met.

extends Node2D

# if rest bar full, player wins
func _on_RestBar_value_changed(value):
	
	if (value == $HUD/RestBar.max_value):
		
		GlobalVariables.rest_score = $HUD/RestBar.value
		GlobalVariables.winner = true
		# warning-ignore:return_value_discarded
		get_tree().change_scene("res://scenes/GameOver.tscn")

# if sleep bar full, player wins if rested value over half

func _on_SleepBar_value_changed(value):
	
	if (value == $HUD/SleepBar.min_value):
		GlobalVariables.rest_score = $HUD/RestBar.value
		
		if ($HUD/RestBar.value >= 50):
			GlobalVariables.winner = true
		else :
			GlobalVariables.winner = false
		#warning-ignore:return_value_discarded
		get_tree().change_scene("res://scenes/GameOver.tscn")
