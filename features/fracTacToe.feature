# fracTacToe.feature

Feature: Fractal TicTacToe

Scenario: Pantalla inicial
	Given Entro a la aplicacion 
	Then Debo ver "Welcome to FracTacToe"

Scenario: Click en una de las celdas
	Given Entro a la aplicacion
	When Click en 0 0 0 0
	Then Debo ver "X" en 0 0 0 0


Scenario: Click en una de las celdas
	Given Entro a la aplicacion
	When Click en 0 0 0 1
	Then Debo ver "X" en 0 0 0 1
	When Click en 0 0 0 0
	Then Debo ver "O" en 0 0 0 0


Scenario: Validación Gano X
	Given Entro a la aplicacion
	When Click en 0 0 0 0
	And Click en 0 0 1 1
	And Click en 0 0 0 1
	And Click en 0 0 1 0
	And Click en 0 0 0 2
	And Entro a la validacion	
	Then Debo ver "El ganador es X"
