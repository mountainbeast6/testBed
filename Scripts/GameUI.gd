extends Control

@onready var score_texture = %Score/ScoreTexture
@onready var score_label = %Score/ScoreLabel

func _ready():
	#make pausable
	process_mode = Node.PROCESS_MODE_PAUSABLE

func _process(_delta):
	# Set the score label text to the score variable in game manager script
	score_label.text = "x %d" % GameManager.score
