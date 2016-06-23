# fracTacToe.feature

Feature: Fractal TicTacToe

Scenario: Pantalla inicial
	Given Entro a la aplicacion 
	Then Debo ver "Welcome to FracTacToe"

Scenario: Click en una de las celdas
	Given Entro a la aplicacion
	When Click en 0 0 0 0
	Then Debo ver "X" en 0 0 0 0
