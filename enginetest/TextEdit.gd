extends TextEdit


func _ready():
	add_keyword_color("if", Color(0.917969, 0.466156, 0.466156))
	add_color_region('"', '"', Color(0.892598, 0.898438, 0.150909))
	add_keyword_color("else", Color(0.914063, 0.464172, 0.464172))
	add_keyword_color("var", Color(0.917969, 0.466156, 0.466156))
	add_keyword_color("pass", Color(0.917969, 0.466156, 0.466156))
	add_keyword_color("extends", Color(0.917969, 0.466156, 0.466156))
	add_color_region('$', '.', Color(0.348835, 0.671875, 0.312317))
	add_keyword_color("func", Color(0.917969, 0.466156, 0.466156))
	add_keyword_color("onready", Color(0.917969, 0.466156, 0.466156))
