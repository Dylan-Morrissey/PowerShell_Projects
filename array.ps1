$a = @()
for($i = 0; $i -le 5; ++$i)
{
 do{
 do{
 write-host -nonewline "Enter a numeric value: "
 $inputString = read-host
 $value = $inputString -as [int]
 $ok = $value -ne $NULL
 if ( -not $ok ) { write-host "You must enter a numeric value" }
 }until ( $ok )
 write-host "You entered: $value"
 if ($value -le 0 -or $value -ge 100){
 Write-host "Please don't enter a value outwith the range 1 to 4"
 }
 }until($value -ge 0 -and $value -le 100)
 $a = $a + $value
13
}

$largest = 0
$i = 0
while($i -le 5){
  if($a[$i] -ge $largest){
    $largest = $a[$i]
  }
  $i++
}
write-host "The largest number picked was $largest"