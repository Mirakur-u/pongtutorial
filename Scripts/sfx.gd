extends AudioStreamPlayer2D


func play_sfx(from_position: float = 0.0):
	
	randomize()
	pitch_scale = randf_range(0.8, 1.2)
	
	seek(from_position)
	print_debug(pitch_scale)
	play()
