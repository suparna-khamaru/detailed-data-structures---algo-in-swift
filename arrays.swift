import Foundation

//reallocation
var str = Array<Int>()                 // []
str.capacity                           // 0
str.reserveCapacity(500)               // []
str.capacity                           // 508

//create arrays
var sup = [Int]()                      // []
var suparna = [2,3,4,5]                // [2, 3, 4, 5]
suparna = [Int](repeating: 2, count: 5)   // [2, 2, 2, 2, 2]

//retrieving arrays
var item = [2,3,4,5]                   // [2, 3, 4, 5]
var number2 = item[1]                  // 3
for element in item {
    print(element)                     // 2 3 4 5
}

//adding elements in arrays
item.append(6)                          // [2, 3, 4, 5, 6]
item.insert(7, at: 5)                   // [2, 3, 4, 5, 6, 7]
item.insert(1, at: 0)                   // [1, 2, 3, 4, 5, 6, 7]

//removing elements in arrays 
var hello = [2,3,4,5,6,7,8,9]           // [2, 3, 4, 5, 6, 7, 8, 9]
hello.removeLast()                      // 9
hello                                   // [2, 3, 4, 5, 6, 7, 8]
hello.removeFirst()                     // 2
hello                                   // [3, 4, 5, 6, 7, 8]
hello.remove(at: 1)                     // 4
hello                                   // [3, 5, 6, 7, 8]
hello.removeAll()                       // []
hello                                   // []

//built-in functions and properties
hello.isEmpty                       // true

var num = [2,3,4,5,6,7,8,9]         // [2, 3, 4, 5, 6, 7, 8, 9]
num.first                           // 2
num.last                            // 9

Array(num.reversed())               // [9, 8, 7, 6, 5, 4, 3, 2]
num.count                           // 8 
num                                 // [2, 3, 4, 5, 6, 7, 8, 9]

num.firstIndex(of: 3)               // 1
num.remove(at: 1)                   // 3
num                                 // [2, 4, 5, 6, 7, 8, 9]
