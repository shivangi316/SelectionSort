   
var array = unsortedIntegers
var marker = 0
var check = 0
var smallestPosition = 1
var smallestNumber = array[0]
var totalSwaps = 0
var currentSwap = 0

func swap(integers: inout[Int], firstIndex: Int, secondIndex: Int) {
    let temp = integers[secondIndex]
    integers[secondIndex] = integers[firstIndex]
    integers[firstIndex] = temp
    totalSwaps += 1
    currentSwap += 1
}

print("Pass: 0, Swaps: 0/0, Array: \(array)")
if array.count == 1 {
    print("Pass: 1, Swaps: 0/0, Array: \(array)")
} else { while marker < array.count-1 {
             check = marker
             smallestPosition = marker
             while check < array.count {
                 if array[check] < array[marker] {
                     if array[check] < array[smallestPosition] {
                         smallestPosition = check
                     }
                 }
                 check += 1
             }
             if array[smallestPosition] < array[marker] {
                 swap(integers: &array, firstIndex: marker, secondIndex: smallestPosition)
             }
             print("Pass: \(marker+1), Swaps: 1/\(marker+1), Array: \(array)")
             marker += 1
             currentSwap = 0
         }
}
    


