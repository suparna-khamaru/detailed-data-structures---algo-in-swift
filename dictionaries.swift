import Foundation

var str = ["Hello" : "suparna"]                     //["Hello": "suparna"]

var pair : [String : String] = ["abc": "def",
                                "mno": "pqr"]       

//dictionary declaration
var hey1 = Dictionary<Int, String>()
var hey2 = [Int: String]()
var hey3 : [Int: String] = [:]

//create a dictionary from 2 arrays
let keys = ["US", "UK", "AZ"]
let values = ["United States",
              "United kingdom",
              "Azerbaijan"]
var newD = Dictionary(uniqueKeysWithValues: zip(keys, values))
  
                                                    /** 
                                                        ["US": "United States", "UK": "United kingdom", "AZ": "Azerbaijan"]
                                                     */

//accessing values in dictionary
newD["US"]

for (key, value) in newD {
    print("Fullform of \(key) is \(value)")
}
                                                    /** Fullform of UK is United kingdom
                                                        Fullform of US is United States
                                                        Fullform of AZ is Azerbaijan
                                                     */

//accessing after sorting
let sorted = newD.sorted(by: {$0.0 < $1.0})
for (hey) in sorted.map({$0.0}) {
    print(hey)
}
                                                    /** 
                                                        AZ
                                                        UK
                                                        US
                                                     */

for (heyya) in sorted.map({$0.1}) {
    print(heyya)
}                                                   /** 
                                                        Azerbaijan
                                                        United kingdom
                                                        United States
                                                     */

//adding/modifying dictionary
newD.updateValue("India", forKey: "IN")
newD
newD.count                                            // 4
Array(newD.keys)                                      // ["UK", "US", "AZ", "IN"]
Array(newD.values)                                    // ["United kingdom", "United States", "Azerbaijan", "India"]
