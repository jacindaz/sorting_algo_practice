# binary search practice
primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]

# WHEN TO USE BINARY SEARCH:
# => array is sorted

def binary_search_num_in_list(list, number_to_find):
    min_index = 0
    max_index = len(list) - 1
    halfway_index = int(round(max_index / 2))

    number_not_found = True

    while number_not_found and halfway_index != max_index and halfway_index != min_index:
        print("\n==============")
        print("min_index: %s, max_index: %s" % (min_index, max_index))
        print("halfway_index: %s, halfway index number: %s" % (halfway_index, list[halfway_index]))
        print("==============\n")

        if number_to_find > list[halfway_index]:
            min_index = halfway_index
        elif number_to_find < list[halfway_index]:
            max_index = halfway_index
        elif number_to_find == list[halfway_index]:
            number_not_found = False
            print("found number!")
            return True

        halfway_index = int(round((max_index - min_index)/2)) + min_index

    print("Did not find number, return False")
    return False

binary_search_num_in_list(primes, 60)


# WRITING OUT STEPS
# [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
# max_index = 24
# searching for 59
# array of indexes:
#   => [12, 18, 15]
#
# steps should go:
#   => index: (24-0)/2 + 0 >>> 24/12 + 0 >>> 12
#   => primes[12], 41
#   => 59 > 41
#
#   => index: (24-12)/2 + 12 >>> 12/2 + 12 >>> 6 + 12 >>> 18
#   => primes[18], 67
#   => 59 < 67
#
#   => index: (18-12)/2 + 12 >>> 6/2 + 12 >>> 3 + 12 >>> 15
#   => primes[15], 53
#   => 59 > 53
#
#   => index: (18-15)/2 + 15 >>> 3/2 + 15 >>> 1.5 + 15 >>> 16.5 >>> 17
#   => primes[17], 61
#   => 59 < 61
#
#   => index: (17-15)/2 + 15 >>> 2/2 + 15 >>> 1 + 15 >>> 16
#   => primes[16], 59
#   => BINGO !
