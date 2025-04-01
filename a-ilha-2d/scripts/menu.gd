extends Control

func _ready() -> void:
	for button in get_tree().get_nodes_in_group("button"):
		# Conexão correta no Godot 4 (sem argumentos extras)
		button.pressed.connect(_on_button_pressed.bind(button))

func _on_button_pressed(button: Button) -> void:
	match button.name:
		"jogar":
			var _game: bool = get_tree().change_scene_to_file("res://scenes/main.tscn")  # Godot 4 usa change_scene_to_file()
		"continue":
			print("Continuar jogo")# Ainda n
		"sair":
			get_tree().quit()# Sai do jogo
