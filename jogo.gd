extends Node2D
@export var velocidade: int
func _ready() -> void:
	velocidade = 400

func _process(delta: float) -> void:
	$fundo.position.x   -= velocidade*delta*0.05
	$fundo2.position.x  -= velocidade*delta*0.05
	if $fundo.position.x < -1152: # se o fundo sair de cena pela esquerda
		$fundo.position.x = 1152 # coloque ele após a cena na direita
	if $fundo2.position.x < -1152:
		$fundo2.position.x = 1152

	# constantemente desloca o sprite pra esquerda
	$chao.position.x -= velocidade*delta*2
	$chao2.position.x -= velocidade*delta*2
	if $chao.position.x < -1152: # se o fundo sair de cena pela esquerda
		$chao.position.x = 1152 # coloque ele após a cena na direita
	if $chao2.position.x < -1152:
		$chao2.position.x = 1152
