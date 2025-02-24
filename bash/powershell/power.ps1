try {

$num= [int](Read-Host "Introduce el número")

if ($num % 2 -eq 0) {
    Write-Host "El número $num es par"
}
else {
    Write-Host "El número $num es impar"
}

}catch{ 
    Write-Host "Introduce un número"
}
