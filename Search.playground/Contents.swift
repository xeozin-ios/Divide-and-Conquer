let array = [1,2,4,5,6,9,11,22,23,28,32]
let abcArray = ["a", "b", "c", "d", "e", "f", "g"]

func linearSearch<T:Comparable> (array:[T], key:T) -> Int? {
    var iterations = 0
    for (i, element) in array.enumerated() {
        if element == key {
            print("Linear Iterations: \(iterations)")
            return i
        }
        
        iterations += 1
    }
    
    return nil
}

func binarySearch<T:Comparable> (array:[T], searchKey:T) -> Int? {
    var range = 0 ..< array.count
    
    while range.startIndex < range.endIndex {
        let midpoint = range.startIndex + (range.endIndex-range.startIndex) / 2
        
        if array[midpoint] == searchKey {
            return midpoint
        } else if array[midpoint] < searchKey {
            range = midpoint + 1 ..< range.endIndex
        } else {
            range = 0 ..< midpoint
        }
    }
    
    return nil
}

linearSearch(array: abcArray, key: "g")
binarySearch(array: abcArray, searchKey: "g")
