#Operating Systems Lab 07 Dylan Morrissey 20075666

#Here I define and initialise the variables that will be used for the script
$game = $true
$computerGuess =""
$playerGuess =""
$playerRPS =""
$computerRPS=""
$numberPlayed = 0
$numberWon = 0
$NumberLost = 0
$numberTied = 0
#Here is the welcome menu the cls is just an alies for cleaning the screen to make it look nicer 
cls
Write-Host "Welcome to the Rock, Paper Scissors Game"
write-Host "WIT Operating Systems"
Read-Host "Press Enter to continue"cls
#Here is the loop for the game this will continue to loop until the player quits the game which then sets this variable to false
while($game -ne $false) {
   ##This pick the number the the computer will use for the round
   ##Gets a random number between 1 and 3 and the assigns this number to Rock paper or scissors
	$computerGuess = Get-Random -minimum 1 -maximum 3
	if ($computerGuess -eq 1) {$computerRPS = "Rock" }
	if ($computerGuess -eq 2) {$computerRPS = "Paper" }
	if ($computerGuess -eq 3) {$computerRPS = "Scissors" }
	
  #This is a while loop for the player to make his guess it take in the character the user enters and then sets it equal to the $playersGuess 
  while ($playerGuess -eq "") {
		write-host "Enter one of the following options: "
        write-host "-------------------------------------------"   
        write-host "r = Rock"
        write-host "s = scissors"
        write-host "p = paper"
        write-host "q = quit"
        write-host "-------------------------------------------"
        write-host "Make a Move"
	    $playerGuess = Read-Host 
	}
	
    #Here os a if statment which check the users input so if the user pick q it will quit the game and if the user picks anything other than R P S and invalid messge will pop up and the user is asked to pick another
    if ($playerGuess -eq "q"){
      write-Host "Game Over. Thanks for playing Rock, Paper Scisors"
      Read-host "Press enter to view the game statistics and quit the game"

      Write-Host "Game Statistics"
      write-host "-------------------------------------------"

      Write-Host "Number Of games played= $numberPlayed"
      write-Host "Number of games won = $numberWon"
      write-Host "Number of games Lost = $numberLost"
      write-Host "Number of games ties = $numberTied"

      write-host "-------------------------------------------"
      Read-Host "Press Enter to continue"
      $game = $false
      break

     } elseif (($playerGuess -ne "r") -and ($playerGuess -ne "p") -and ($playerGuess -ne "s")){
         
        write-Host "Invalid input. Please try again"
        $playerGuess = ""
        continue 
     }
    #Here the if the $playerGuess is equal to R P S is will assign it with the correct value and the it calculates the result using the switch statment below
    if ($playerGuess -eq "r") {$playerRPS = "Rock"}
	if ($playerGuess -eq "p") {$playerRPS = "Paper"}
	if ($playerGuess -eq "s") {$playerRPS = "Scissors"}
    write-Host "Results"
    write-host "-------------------------------------------"
	write-host "The computer picked: $computerRPS" 
    write-host "You picked: $playerRPS "
    write-host "-------------------------------------------"
	#Here the switch statement compairs the computer guess with the players guess and finds which one matches and will then print the result of that round and add 1 to the round and 1 to what ever the result was for the Stats 
    switch ($computerRPS) 
	  {
		"Rock" {
			if ($playerRPS -eq "Rock"){
              $numberTied++ 
              write-host "You've Tied!"}
			if ($playerRPS -eq "Paper"){
              $numberWon++ 
              write-host "You've Won!"}
			if ($playerRPS -eq "Scissors"){
              $numberLost++
              write-host "You've Lost!"}
		  }
		"Paper" {
			if ($playerRPS -eq "Rock"){
              $numberLost++
              write-host "You've Lost!"}
			if ($playerRPS -eq "Paper"){
              $numberLost++
              write-host "You've Tied!"}
            $numberTied++ 
			if ($playerRPS -eq "Scissors"){
              $numberWon++
              write-host "You've Won!"}
		  }
		"Scissors" {
			if ($playerRPS -eq "Rock"){
              $numberWon++
              write-host "You've Won!"}
			if ($playerRPS -eq "Paper"){
              $numberLost++
              write-host "You've Lost!"}
			if ($playerRPS -eq "Scissors"){
              $numberTied++ 
              write-host "You've Tied!"}
		  }	
	  }

	Read-Host "Press Enter to continue"
	#Here just resets the variables so that the next game can begin
	$computerGuess = 0
	$playerGuess = 0
	$playerRPS = ""
	$computerRPS = ""
}