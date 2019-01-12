const min = document.querySelector('.form__minValue');
const max = document.querySelector('.form__maxValue');
const toFind = document.querySelector('.form__valueToFind');
const submitGuess = document.querySelector('.form__submit');
const resultSpace = document.querySelector('.container__result');

submitGuess.addEventListener('click', play);

function play(e) {  
  e.preventDefault();
  let maxValue = parseInt(max.value);
  let minValue = parseInt(min.value);
  let toFindValue = parseInt(toFind.value);

  let numbersContent = [];
  for (let index = minValue; index <= maxValue; index++) {    
    numbersContent.push(index);    
  }
  console.log(numbersContent);
  let result = binarySearch(numbersContent, toFindValue);
  resultSpace.innerHTML = result;
}

function binarySearch(array, value) {
  let guess,
  min = 0,
  max = array.length - 1; 
  while(min <= max){
    guess = Math.floor((max + min)/2);
    if(array[guess] === value){
      return "Lo adiviné, es: " + array[guess] + " en el index: " + guess;
    } else if (value > array[guess]) {
      min = guess + 1;
    } else {
      max = guess - 1;
    }
  }
  return "Introduce valores adecuados"; 
}
