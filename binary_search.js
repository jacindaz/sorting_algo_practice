/* Returns either the index of the location in the array,
  or -1 if the array did not contain the targetValue */
var doSearch = function(array, targetValue) {
    var min = 0;
    var max = array.length - 1;
    var halfway_index = Math.round(max / 2);

    var numberNotFound = true;

    while (numberNotFound == true) {
        console.log("\n===================");
        console.log("\nmin: " + min + ", max: " + max);
        console.log("current_number: " + array[halfway_index] + "");

        if (targetValue > array[halfway_index]) {
            console.log("targetValue > array[halfway_index]\n");
            min = halfway_index;

            console.log("min: " + min + ", max: " + max);
        } else if (targetValue < array[halfway_index]) {
            console.log("targetValue < array[halfway_index]\n");
            max = halfway_index;

            console.log("min: " + min + ", max: " + max);
        } else if (targetValue == array[halfway_index]) {
            numberNotFound = true;
            console.log("\n=================")
            console.log("=================")
            console.log("Found number!");
            console.log("index: " + halfway_index + ", number: " + array[halfway_index]);
            console.log("=================")
            console.log("=================\n")

            return halfway_index;
        }

        halfway_index = Math.round((max - min)/2) + min;

        console.log("===================\n")
    }

    return -1;
};

var primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97];

var result = doSearch(primes, 73);
// console.log("Found prime at index " + result);

//Program.assertEqual(doSearch(primes, 73), 20);

