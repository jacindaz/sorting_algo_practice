var doSearch = function(array, targetValue) {
    var min = 0;
    var max = array.length - 1;
    var guess;
    while(array[guess] != targetValue){
        guess = Math.round((max - min)/2) + min;

        if(array[guess] === targetValue){
            console.log("Found number! number: " + array[guess] + ", index: " + guess);
            return guess;
        }
        else if(targetValue < array[guess]){
            max = guess;
        }
        else{
            min = guess;
        }
    }
    console.log("Poop, did not find number!");
    return -1;
};

var primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97];

var result = doSearch(primes, 97);
// var result = doSearchJacindasWay(primes, 73);
// console.log("Found prime at index " + result);

//Program.assertEqual(doSearch(primes, 73), 20);

/* Returns either the index of the location in the array,
  or -1 if the array did not contain the targetValue */
var doSearchJacindasWay = function(array, targetValue) {
    var min = 0;
    var max = array.length - 1;
    var halfway_index = Math.round(max / 2);

    var numberNotFound = true;

    while (numberNotFound === true) {
        if (targetValue > array[halfway_index]) {
            min = halfway_index;
        } else if (targetValue < array[halfway_index]) {
            max = halfway_index;
        } else if (targetValue === array[halfway_index]) {
            numberNotFound = true;
            return halfway_index;
        }

        halfway_index = Math.round((max - min)/2) + min;
    }

    return -1;
};
