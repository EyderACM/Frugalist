//Algoritmo de busqueda binaria Equipo 1

function binarySearch(array, value) {
  // Definimos 3 variables que representan las posiciones de los elementos del array
  let guess,
  min = 0,
  max = array.length - 1; 

  // Usamos un bucle para modificar max o min hasta encontrar el valor
  while(min <= max){

    // Sacamos promedio de max y min
    guess = Math.floor((max + min)/2);

    // Si el elemento en la posición promedio es igual al valor deseado, salimos de la función
    if(array[guess] === value){
      return "I guessed it, it is: " + array[guess] + " in the index: " + guess;

    // Si el valor encontrado es menor al valor deseado, el index minimo se convierte en la posición promedio + 1
    } else if (value > array[guess]) {
      min = guess + 1;

    // Si el valor encontrado es mayor al valor deseado, el index máximo se convierte en la posición promedio - 1
    } else {
      max = guess - 1;
    }
  }

  return "There was an error";
}

//Tests 
console.log(binarySearch([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], 2)); // I guessed It, it is: 2 in the index: 1
console.log(binarySearch([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], 12)); // There was an error 

//hola, solo pruebo el fork xddddd


