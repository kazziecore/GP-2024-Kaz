extends Node2D

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	queue_redraw()
	pass

func _draw() -> void:
	var r = Rect2(10, 10, 100, 30)
	draw_rect(r, Color.ANTIQUE_WHITE, false, 5)
	draw_line(Vector2(50, 50), Vector2(200, 200), Color.BEIGE)
	draw_circle(Vector2(500, 500), 100, Color.LIGHT_PINK, true)

	var v = get_viewport_rect()

	draw_line(Vector2(0, v.size.y), Vector2(v.size.x, 0), Color.WHITE)

	for i in range(10):
		print(i)

	for i in range(10, -1, -1):
		print(i)

	var basket = ["apple", "bananna", "carrot"]

	for f in basket:
		print(f)

	for i in range(basket.size()):
		print(basket[i])
	
	var num_lines = 10
	var s = get_viewport_rect().size
	var w = s.x / num_lines
	
	for i in range(num_lines):
		draw_line(Vector2(i * w, 0), Vector2(i * w, s.y), Color.MEDIUM_PURPLE)
		
	var num_h_lines = 50
	var gap = 60
	var border = 100
	for i in range(num_lines):
		draw_line(Vector2(border, border + gap * i), Vector2(v.size.x - border, border + gap * i), Color.HOT_PINK)
		draw_line(Vector2(0, gap * i), Vector2(v.size.x, v.size.y - i * gap), Color.PALE_VIOLET_RED)

	var m = get_global_mouse_position()
	print(m)
	var num_c_lines = m.x / 2
	
	gap = v.size.y / num_c_lines
	
	for i in range(num_c_lines):
		draw_line(Vector2(0, i * gap), Vector2(v.size.x, v.size.y - (i * gap)), Color.ALICE_BLUE)
	
	


	pass
